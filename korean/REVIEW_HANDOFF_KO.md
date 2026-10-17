# Fallout Et Tu 한국어판 정밀 검수 인계

## 목표
이 채팅에서는 Fallout Et Tu 2.0.3911 한국어 번역을 **화자별·대사 맥락별로 정밀 검수**한다. 설치기나 공통 엔진 개발은 하지 않는다. 전체 자료를 빠르게 훑고 끝났다고 말하지 말고, 검토한 화자·파일·ID를 기록하면서 순차 진행한다.

## 소스
- 저장소: https://github.com/munument1/Fallout-Et-Tu-Korean-Edition
- 작업 브랜치: `ko/v2.0.3911`
- 한국어 대사: `Fallout2/Fallout1in2/data/text/korean/dialog/`
- 영어 원문: `Fallout2/Fallout1in2/mods/fo1_base/text/english/dialog/`
- NPC 스크립트: `Fallout2/Fallout1in2/Mapper/source/scripts/`
- 말투 1차 보고서: https://github.com/munument1/Fallout-Et-Tu-Korean-Edition/actions/runs/39009952158
- 주요 후보: ARADESH, CABBOT, TANDI, VREE, JAIN, DECKER 등.

## 검수 원칙
1. 반드시 MSG의 `{ID}{음성식별자}{본문}` 구조와 원본 영어 문장을 대조한다.
2. MSG 한 파일 안에는 NPC 발화와 플레이어 선택지가 섞여 있다. `Reply(ID)`와 `NOption(ID)`, `GOption(ID)` 등의 실제 스크립트 참조로 발화자를 구분한다.
3. 주 화자의 기본 말투(해요체·하십시오체·하오체·반말·하게체)를 정하고, 관계·상황 변화에 따른 예외는 ID와 사유를 기록한다.
4. 조사·오역·어색한 직역·고유명사·마침표·줄바꿈·플레이스홀더를 검사하되 게임 내 기능 태그를 임의로 삭제하지 않는다.
5. 음성 ID가 있는 줄만으로 전수 검수가 끝났다고 주장하지 않는다. 음성 ID 없는 NPC 대사도 스크립트로 추적한다.
6. 실제 번역 파일은 CP949/원본 바이트 형식을 보존한다. 자동 전역 치환이나 AI 일괄 덮어쓰기를 금지한다.
7. 검수된 수정 파일만 `python korean/update_manifest.py --apply <정확한 상대경로>`로 해시를 갱신한다. 이후 `python korean/build_overlay.py`, `python -m unittest discover -s korean/tests -v` 실행.
8. 기존 번역 배포 저장소와 원본 `master`는 사용자 승인 없이 건드리지 않는다. Nexus 릴리스는 전체 정밀 검수 및 실게임 검사 이후 별도로 승인한다.

## 검수 진행 기록
화자별로 `미검수 / 분석 중 / 수정 / 확정` 상태, 대사 ID, 원문·번역·변경 사유, 기본 말투와 허용 예외를 기록한다. `korean/register-decisions.csv`를 활용한다.

첫 단계는 아라데쉬를 예시로 영어 원문·플레이어 선택지를 제대로 구분한 후 말투 기준을 확정하는 것이다. 이후 주요 화자를 하나씩 진행하고 나머지 파일로 확대한다.