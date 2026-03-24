#include <iostream>
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_profiler.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/schema/schema_generated.h"

// [중요] 1단계에서 만든 모델 데이터 배열을 가져오기 위해 선언 (extern)
// 변수명은 변환된 .cc 파일을 열어서 정확히 확인하세요.
extern const unsigned char g_kws_ref_model_data[]; 

// 텐서 아레나(메모리) 크기 설정 (DS-CNN은 약 20KB~ 이상 필요, 여유 있게 100KB)
const int kTensorArenaSize = 100 * 1024;
uint8_t tensor_arena[kTensorArenaSize];

int main() {
  // 1. 모델 로드
  const tflite::Model* model = tflite::GetModel(g_kws_ref_model_data);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
    std::cerr << "Model schema version mismatch!" << std::endl;
    return -1;
  }

  // 2. OpResolver 설정 (필요한 연산자만 등록)
  tflite::MicroMutableOpResolver<6> resolver;
  resolver.AddConv2D();
  resolver.AddDepthwiseConv2D();
  resolver.AddAveragePool2D();
  resolver.AddReshape();
  resolver.AddFullyConnected();
  resolver.AddSoftmax();

  // 3. 프로파일러 생성
  tflite::MicroProfiler profiler;

  // 4. 인터프리터 생성 (Profiler 주입!)
  tflite::MicroInterpreter interpreter(
      model, resolver, tensor_arena, kTensorArenaSize, 
      nullptr, // Resource variables
      &profiler // <--- ★ 핵심: 프로파일러 연결
  );

  // 5. 텐서 할당
  if (interpreter.AllocateTensors() != kTfLiteOk) {
    std::cerr << "AllocateTensors failed." << std::endl;
    return -1;
  }

  // 6. (옵션) 입력 데이터 채우기 
  // 실제 오디오 데이터가 없다면 0으로 초기화해도 프로파일링(속도 측정)은 가능합니다.
  TfLiteTensor* input = interpreter.input(0);
  // input->data.int8[...] = ...; (데이터가 있다면 복사)

  // 7. 실행 (Inference)
  std::cout << "Starting Profiling..." << std::endl;
  
  // 여러 번 돌려서 평균을 보거나 웜업(Warm-up)을 할 수 있습니다.
  for (int i = 0; i < 3; i++) {
      std::cout << "\n--- Run " << i+1 << " ---" << std::endl;
      if (interpreter.Invoke() != kTfLiteOk) {
        std::cerr << "Invoke failed." << std::endl;
        return -1;
      }
      // MicroProfiler는 Invoke() 내부에서 자동으로 로그를 출력합니다.
      // (PC 환경에서는 stdout/printf로 나옵니다)
  }

  return 0;
}