# Walla 설문 로직 빌더 (목업)

Walla 설문 제작 툴의 "설문 로직 빌더" 화면을 재현한 정적 HTML/CSS/JS 목업입니다. 피그마 디자인을 기반으로 제작했습니다.

## 배포

https://walla-survey-flow.netlify.app

## 로컬에서 보기

`walla-survey-flow.html`을 브라우저로 열면 됩니다. 별도 빌드 과정이 없습니다.

## 구성

- `walla-survey-flow.html` — 메인 페이지 (= `index.html`과 동일)
- `assets/` — 아이콘/이미지 (피그마에서 추출)
- `watch-deploy.sh` — 파일 변경 감지 시 Netlify에 자동 배포하는 로컬 스크립트

## 업데이트 내역

> 시각은 각 커밋의 git 커밋 타임스탬프 기준입니다. 커밋 1~13은 작업 내용을
> 기능 단위로 재정리하면서 한 번에 다시 커밋한 것이라 타임스탬프가 몇 초 이내로
> 몰려 있습니다 — 실제로 화면에서 개발하고 확인한 시각은 아닙니다.

| # | 커밋 시각 (KST) | 커밋 | 구분 | 내용 |
|---|------|------|------|------|
| 1 | 2026-08-29 02:32:23 | [`aac6527`](https://github.com/minzzn/walla-survey-flow/commit/aac6527) | `feat` | 피그마 임시 CDN URL을 `assets/` 로컬 파일로 교체 (7일 만료 문제 해결) |
| 2 | 2026-08-29 02:32:23 | [`7042295`](https://github.com/minzzn/walla-survey-flow/commit/7042295) | `feat` | 중앙 캔버스 드래그 + 휠 스크롤 패닝 추가 |
| 3 | 2026-08-29 02:32:23 | [`eb5ec8d`](https://github.com/minzzn/walla-survey-flow/commit/eb5ec8d) | `feat` | 모바일 한 손가락 터치 패닝 지원 |
| 4 | 2026-08-29 02:32:23 | [`374cd33`](https://github.com/minzzn/walla-survey-flow/commit/374cd33) | `feat` | 줌 인/아웃 · 화면맞춤 · 잠금 컨트롤 버튼 연결 (줌아웃 아이콘 찌그러짐 버그도 수정) |
| 5 | 2026-08-29 02:32:23 | [`c675855`](https://github.com/minzzn/walla-survey-flow/commit/c675855) | `feat` | 문항 편집 패널(Q5~Q8 옵션/척도 UI) + 편집·로직 모드 전환 추가 |
| 6 | 2026-08-29 02:32:23 | [`217942f`](https://github.com/minzzn/walla-survey-flow/commit/217942f) | `refactor` | 캔버스 탭 / 우측 패널 탭 상태를 `setEditMode()`로 통합 |
| 7 | 2026-08-29 02:32:23 | [`731e8d7`](https://github.com/minzzn/walla-survey-flow/commit/731e8d7) | `feat` | "로직 미리보기" 팝오버를 정보 아이콘 호버·탭 시에만 노출 |
| 8 | 2026-08-29 02:32:23 | [`b6ee47e`](https://github.com/minzzn/walla-survey-flow/commit/b6ee47e) | `feat` | 문항 선택 시 테두리 강조 + 스크롤, 우측 패널 연동(로직 없는 문항은 빈 상태) |
| 9 | 2026-08-29 02:32:23 | [`a1b3848`](https://github.com/minzzn/walla-survey-flow/commit/a1b3848) | `feat` | 문항 옵션의 이동/삭제 버튼을 호버 시에만 노출 |
| 10 | 2026-08-29 02:32:24 | [`7f94ec0`](https://github.com/minzzn/walla-survey-flow/commit/7f94ec0) | `feat` | 중앙 패널에서 문항 블록을 직접 클릭해도 선택되도록 확장 |
| 11 | 2026-08-29 02:32:24 | [`ada4cf8`](https://github.com/minzzn/walla-survey-flow/commit/ada4cf8) | `fix` | 문항 패널 자동 스크롤이 전체 페이지가 아닌 패널 내부로만 동작하도록 수정 |
| 12 | 2026-08-29 02:32:24 | [`84ecfd8`](https://github.com/minzzn/walla-survey-flow/commit/84ecfd8) | `feat` | 첫 진입 시 문항 편집 화면을 기본값으로, 로직 전용 컨트롤 범위 지정 |
| 13 | 2026-08-29 02:32:24 | [`8ee1d2e`](https://github.com/minzzn/walla-survey-flow/commit/8ee1d2e) | `chore` | Netlify 자동배포 워처(`watch-deploy.sh`) 추가 |
| 14 | 2026-08-29 02:38:23 | [`51d6849`](https://github.com/minzzn/walla-survey-flow/commit/51d6849) | `docs` | README에 업데이트 내역 표 추가 |
| 15 | 2026-08-29 02:41:22 | [`556bf29`](https://github.com/minzzn/walla-survey-flow/commit/556bf29) | `docs` | 업데이트 내역 표를 커밋 타임스탬프 기준으로 전환 |
| 16 | 2026-08-29 02:51:24 | [`dc1aca3`](https://github.com/minzzn/walla-survey-flow/commit/dc1aca3) | `feat` | 우측 패널 "새 로직 추가" 버튼으로 로직 블록 생성 (문항별로 안 섞이게 하는 버그도 같이 수정) |
| 17 | 2026-08-29 02:55:23 | [`1e07d02`](https://github.com/minzzn/walla-survey-flow/commit/1e07d02) | `fix` | 우측 패널을 고정 높이로 만들고, 로직이 늘어나면 패널 내부에서만 스크롤되도록 수정 |
| 18 | 2026-08-29 02:58:36 | [`e65bd22`](https://github.com/minzzn/walla-survey-flow/commit/e65bd22) | `fix` | 로직이 많아지면 "새 로직 추가" 버튼 등이 찌그러지던 flex-shrink 버그 수정 |
| 19 | 2026-08-29 03:25:21 | [`01b202e`](https://github.com/minzzn/walla-survey-flow/commit/01b202e) | `feat` | 우측 패널 문항/답변/조건/이동 필드를 실제 동작하는 드롭다운으로 구현 |
| 20 | 2026-08-29 03:35:16 | [`aab07bb`](https://github.com/minzzn/walla-survey-flow/commit/aab07bb) | `fix` | 문항 드롭다운 선택 시 패널이 비어 보이던 버그, 답변 다중 선택 시 칩이 넘치던 버그 수정 |
| 21 | 2026-08-29 03:48:53 | [`b213f48`](https://github.com/minzzn/walla-survey-flow/commit/b213f48) | `feat` | 우측 패널 로직 블록을 단일 선택 아코디언으로 전환 (선택 시 파란 테두리로 펼침, 그 외 기본 상태) |
| 22 | 2026-08-29 04:01:23 | [`7e9cb03`](https://github.com/minzzn/walla-survey-flow/commit/7e9cb03) | `feat` | 우측 패널 로직 상태를 중앙 패널 옵션의 이동 표시(→ Qn 아이콘+텍스트)와 실시간 동기화 |

실제로 화면에서 작업이 진행된 날짜는 2026-08-28 저녁(1~4번, 배포/워처 설정) →
2026-08-29 새벽(5~22번)입니다.

- 저장소: https://github.com/minzzn/walla-survey-flow
- PR: https://github.com/minzzn/walla-survey-flow/pull/1
