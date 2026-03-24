# TFLM third-party 다운로드 가이드 (2026-03-24)

## 1. 배경
`pointwise` 빌드에서 아래 에러가 발생할 수 있습니다.

- `fixedpoint/fixedpoint.h: No such file or directory`

이는 TFLM Make 기반 third-party 의존성(`gemmlowp`, `ruy`, `flatbuffers`, `kissfft` 등)이
아직 다운로드되지 않았을 때 발생합니다.

## 2. 핵심 요약
- 보통 워크스페이스(클론) 기준으로 **1회 다운로드**면 충분합니다.
- 단, `downloads` 폴더를 지우거나(`clean_downloads`) 브랜치/버전 변경이 있으면 재실행이 필요합니다.

## 3. 올바른 실행 방법
중요: `make` 폴더 내부에서 바로 실행하지 말고, `tflite-micro` 루트에서 `-f`로 호출합니다.

```bash
cd "/home/hosung/Ho/SoCLab workspace/RV32I-Project/TinyML/lib/tflite-micro"
make -f tensorflow/lite/micro/tools/make/Makefile third_party_downloads
```

### 3-1. 왜 이렇게 실행해야 하나?
Makefile 내부 경로 변수는 아래처럼 구성됩니다.

- `RELATIVE_MAKEFILE_DIR := tensorflow/lite/micro/tools/make`
- `MAKEFILE_DIR := $(TENSORFLOW_ROOT)$(RELATIVE_MAKEFILE_DIR)`

즉, `tflite-micro` 루트를 기준으로 상대경로가 해석되도록 설계되어 있습니다.

## 4. 잘못 실행했을 때의 전형적인 에러
`.../tools/make` 폴더로 직접 들어가서 `make third_party_downloads`를 실행하면,
상대경로가 중복 해석되어 아래 에러가 날 수 있습니다.

```text
python3: can't open file '.../tools/make/tensorflow/lite/micro/tools/make/specialize_files.py': [Errno 2] No such file or directory
Makefile:457: *** Error with specialize_files.py .  Stop.
```

## 5. 다운로드 완료 확인
아래 폴더들이 생성되면 정상입니다.

- `tensorflow/lite/micro/tools/make/downloads/gemmlowp`
- `tensorflow/lite/micro/tools/make/downloads/ruy`
- `tensorflow/lite/micro/tools/make/downloads/flatbuffers`
- `tensorflow/lite/micro/tools/make/downloads/kissfft`
- `tensorflow/lite/micro/tools/make/downloads/pigweed`

## 6. 재실행이 필요한 경우
다음 중 하나라도 해당되면 다시 실행합니다.

1. `tensorflow/lite/micro/tools/make/downloads`를 삭제한 경우
2. `make clean_downloads`를 실행한 경우
3. third-party 버전/패치가 달라진 브랜치 또는 커밋으로 이동한 경우

## 7. 현재 pointwise 스크립트와의 관계
`pointwise/script/build_pointwise.sh`는
`tensorflow/lite/micro/tools/make/downloads/gemmlowp`를 include 경로로 사용합니다.
따라서 third-party 다운로드가 선행되어야 빌드가 정상 완료됩니다.
