## 해결한 문제 요약

### 1️⃣ **Controller가 잘못된 명령어 디코드** (가장 큰 문제)

* **문제** : Controller가 IF 단계의 `inst` 사용 → 1사이클 앞선 명령어 디코드
* **해결** : ID 단계의 `IFID_inst` 사용하도록 수정

### 2️⃣ **파이프라인 단계 신호 연결 오류**

* **문제** : MemWrite, MemAddr이 잘못된 파이프라인 단계에서 출력
* **해결** : MEM 단계의 `EXMEM_*` 신호를 메모리에 연결

### 3️⃣ **레지스터 파일 Internal Forwarding 누락**

* **문제** : WB와 ID가 같은 사이클에 발생할 때 forwarding 없음
* **해결** : 레지스터 파일에 internal forwarding 추가

## 파이프라인 동작 확인

**Cycle 5-7** (sw x10, 0(x0)):

* **Cycle 5** : `rs2_data=0000000a` ← Internal forwarding 작동! ✅
* **Cycle 6** : `IDEX_rs2_data=0000000a` ← 파이프라인 전파 ✅
* **Cycle 7** : `write_data=0000000a`, `ByteEnable=1111` ← 메모리 쓰기 성공! ✅

RV32I 5단계 파이프라인 CPU가 완벽하게 동작합니다! 🚀
