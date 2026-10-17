# Fallout Et Tu 한국어 NPC 정밀 검수 진행

기준: Fallout Et Tu 2.0.3911, 한국어 기준 브랜치 ko/v2.0.3911. 원본 master는 수정하지 않음.

| NPC | 현재 상태 | 대조한 MSG ID | 수정한 ID | 검수 기록 |
|---|---|---:|---:|---|
| ARADESH (아라데쉬) | 번역 수정·정적 검증, 실게임 테스트 보류 | 214 | 83 | korean/reviews/ARADESH-20261017.md |
| TANDI (탠디) | 번역 수정·정적 검증, 실게임 테스트 보류 | 164 | 60 | korean/reviews/TANDI-20261017.md |
| CABBOT (카봇) | 번역 수정·자동 검증, 실게임 테스트 보류 | 182 | 76 | korean/reviews/CABBOT-20261017.md |
| VREE (브리) | 번역 수정·정적 검증, 실게임 검증 보류 | 149 | 72 | korean/reviews/VREE-20261017.md |
| JAIN (제인) | 번역 수정·정적 검증, 실게임 확인 보류 | 117 | 60 | korean/reviews/JAIN-20261017.md |
| CALDER (칼더) | 번역 수정·정적 검증, 실게임 확인 보류 | 109 | 43 | korean/reviews/CALDER-20261017.md |
| BRENDEN (브렌든) | 번역 수정·정적 검증, 실게임 확인 보류 | 28 | 14 | korean/reviews/BRENDEN-20261017.md |
| 나머지 NPC 전원 | 미검수 | 0 | 0 | - |

7명의 원문, NPC와 플레이어의 SSL 발화 구분, 변경 전후 ID별 상세내용은 korean/reviews/ 아래의 각 NPC 검수 보고서 참조.

중요: 초기 커밋 7e201d7, fb5d1a6 작성 당시 Windows PowerShell 기본 파이프 인코딩 오류로 다수 한글이 물음표로 치환되었으므로 두 대사 파일과 검수 기록을 기준 원본에서 다시 생성해 교정하였다. 반드시 교정 커밋 이후의 최신 원격 브랜치를 사용해야 한다.

전체 NPC 검수 및 실게임 분기별 확인 완료 전에는 전체 완료 또는 Nexus 정식 릴리스를 선언하지 않는다.


## 1차 우선순위 7명 요약

아라데쉬 214/83, 탠디 164/60, 카봇 182/76, 브리 149/72, 제인 117/60, 칼더 109/43, 브렌든 28/14 (순서: 대조 MSG/수정 MSG).

**합계 963개 MSG ID 원문 대조, 408개 번역 ID 수정.** 이 수치는 전체 게임의 MSG ID가 아니며 나머지 NPC 파일은 대부분 미검수 상태다. 7개 NPC 모두 실게임 분기 테스트는 아직 실시하지 않았다.

모든 수정은 NPC별 후속 브랜치와 커밋으로 누적되며, 원본 master 및 ko/v2.0.3911 기준 브랜치에는 자동 병합하지 않았다. release-approval 승인 없음. Nexus 배포 및 정식 설치기 릴리스 금지.


## 다음 검수 작업 (중단·채팅 이동 인계)

1. 다음 대상은 **DECKER (데커)**. 기존 검수 인계문의 주요 말투 혼용 후보이며, Fallout2/Fallout1in2/data/text/korean/dialog/DECKER.msg에 번역문이 있음.
2. 영어 원본 Fallout2/Fallout1in2/mods/fo1_base/text/english/dialog/DECKER.msg과 스크립트 Fallout2/Fallout1in2/Mapper/source/scripts/06hub/DECKER.ssl을 우선 조사.
3. review/brenden-20261017 최신 커밋에서 review/decker-...를 새로 분기. 7명의 수정이 누적된 상태를 유지하고 원본 추적용 master는 수정하지 않기.
4. 대사 화자와 분기 구분 → 영문 의미 및 말투 교정 → CP949/MSG ID/음성 태그/해시 및 물음표 손상 확인 → 오버레이 빌드/테스트 → 검수 보고서/커밋 순서로 진행.
5. 전체 파일 인벤토리 참고: 현재 로컬 한국어 dialog 폴더에 MSG 1508개가 있으나 이는 NPC 1508명이나 같은 소스 계열 1508개라는 뜻이 아님. fo1_base 영어 대사 경로에 기록된 파일 수는 654개. 다른 소스 계열과 스크립트 없는 메시지도 포함되어 있어 정확한 원문 대응은 파일별 조사해야 함.
6. **기술적 주의:** Windows PowerShell에서 한글 Python 코드를 표준입력으로 보낼 때 OutputEncoding을 UTF-8로 설정하지 않으면 한글이 물음표로 치환될 수 있음. 단순 CP949 테스트가 이 손상을 잡지 못하므로 원본 대비 물음표 개수와 실제 한글 출력도 검사할 것.

현재 우선순위 7명은 *번역 수정과 정적 검증 단계만* 완료. 나머지 대사와 전체 실게임 검수·정식 배포는 미완료.
