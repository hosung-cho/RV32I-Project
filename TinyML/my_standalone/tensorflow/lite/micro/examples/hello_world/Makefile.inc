# 1. 테스트 소스 파일 목록 비우기 (사용 안 함)
HELLO_WORLD_TEST_SRCS :=

# 2. 핵심 소스 파일 지정 (우리가 넣은 파일들)
# $(TENSORFLOW_ROOT)는 TFLM 루트 경로를 의미합니다.
HELLO_WORLD_SRCS := \
$(TENSORFLOW_ROOT)tensorflow/lite/micro/examples/hello_world/main.cc \
$(TENSORFLOW_ROOT)tensorflow/lite/micro/examples/hello_world/kws_ref_model.cc

# 3. 헤더 파일 목록 비우기
HELLO_WORLD_HDRS :=

# 4. 모델 생성기 입력 제거 (기존 sine 모델 생성 방지)
HELLO_WORLD_GENERATOR_INPUTS :=

# 5. 자동 생성 소스/헤더 목록 제거
HELLO_WORLD_GENERATED_SRCS :=
HELLO_WORLD_GENERATED_HDRS :=

# 6. 테스트 빌드 규칙 주석 처리 (에러 방지)
# $(eval $(call microlite_test,hello_world_test,\
# $(HELLO_WORLD_TEST_SRCS),,$(HELLO_WORLD_GENERATOR_INPUTS)))

# 7. 메인 바이너리 빌드 규칙 (핵심)
# 위에서 정의한 HELLO_WORLD_SRCS를 사용하여 'hello_world' 바이너리를 만듭니다.
$(eval $(call microlite_test,hello_world,\
$(HELLO_WORLD_SRCS),,$(HELLO_WORLD_GENERATOR_INPUTS)))

# 8. 리스트 출력용 규칙 (유지)
list_hello_world_example_sources:
	@echo $(HELLO_WORLD_SRCS)

list_hello_world_example_headers:
	@echo $(HELLO_WORLD_HDRS)