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
| 23 | 2026-08-29 04:13:00 | [`10beaae`](https://github.com/minzzn/walla-survey-flow/commit/10beaae) | `fix` | 답변 드롭다운 체크박스가 칩 추가/삭제(어느 경로든)와 항상 일치하도록 수정 |
| 24 | 2026-08-29 04:18:01 | [`0270d02`](https://github.com/minzzn/walla-survey-flow/commit/0270d02) | `fix` | 우측 패널 로직 설정이 로직 탭 활성화 시에만 보이도록 수정 (문항 설정 탭에서 노출되던 버그) |
| 25 | 2026-08-29 04:21:45 | [`45ba2fa`](https://github.com/minzzn/walla-survey-flow/commit/45ba2fa) | `fix` | 중앙 캔버스 탭과 우측 패널 탭을 독립적으로 분리 (한쪽 전환이 다른 쪽을 강제로 바꾸던 버그) |
| 26 | 2026-08-29 04:44:02 | [`fb34d10`](https://github.com/minzzn/walla-survey-flow/commit/fb34d10) | `feat` | 문항 제목·옵션 텍스트를 번호 제외하고 직접 수정 가능하게 하고, 수정 시 우측 패널까지 자동 반영 |
| 27 | 2026-08-29 04:49:43 | [`81f6e7c`](https://github.com/minzzn/walla-survey-flow/commit/81f6e7c) | `fix` | "새 로직 추가"로 만든 블록도 이동 대상을 고르면 헤더에 화살표+대상 문항 배지가 나타나도록 수정 |
| 28 | 2026-08-29 12:11:50 | [`1d79b1d`](https://github.com/minzzn/walla-survey-flow/commit/1d79b1d) | `feat` | Q5에 "처음이에요 → Q8" 로직2를 기본으로 미리 추가 |
| 29 | 2026-08-29 12:20:51 | [`365235d`](https://github.com/minzzn/walla-survey-flow/commit/365235d) | `feat` | 로직 캔버스에서 문항 카드/핀을 클릭하면 캔버스 모드는 유지한 채 우측 패널을 그 문항의 로직 탭으로 전환 |
| 30 | 2026-08-29 12:33:52 | [`c8e60cc`](https://github.com/minzzn/walla-survey-flow/commit/c8e60cc) | `feat` | Q5 로직 카드를 기본 접힘 상태로 바꾸고 활성화됐을 때만 펼치기, 분기선도 활성화 시에만 파란색으로 표시 |
| 31 | 2026-08-29 12:37:08 | [`4385b29`](https://github.com/minzzn/walla-survey-flow/commit/4385b29) | `fix` | Q5 카드에서 Q8로 곧게 내려가는 두 번째 연결선도 카드 활성화에 같이 반응하도록 수정 |
| 32 | 2026-08-29 12:40:36 | [`f415ac2`](https://github.com/minzzn/walla-survey-flow/commit/f415ac2) | `feat` | 연결선 활성화 표시를 Q6/Q7/Q8에도 확장 (문항 클릭 시 그 문항의 다음 연결선만 파란색) |
| 33 | 2026-08-29 12:47:39 | [`1df5c15`](https://github.com/minzzn/walla-survey-flow/commit/1df5c15) | `fix` | Q5 카드가 접힌 상태일 때 연결선이 카드 아래 빈 공간에서 끊겨 보이던 버그 수정 |
| 34 | 2026-08-29 12:52:00 | [`81ff12f`](https://github.com/minzzn/walla-survey-flow/commit/81ff12f) | `fix` | "2 또는 3" 분기 라벨이 카드 접힘/펼침 상태와 무관하게 항상 분기선 중앙에 오도록 수정 |
| 35 | 2026-08-31 09:16:21 | [`6e31410`](https://github.com/minzzn/walla-survey-flow/commit/6e31410) | `feat` | 첫 화면에서 모든 문항이 로직 없는 빈 상태로 시작하도록 변경 (Q5 예시 로직 2개 제거) |
| 36 | 2026-08-31 09:21:07 | [`8f168e1`](https://github.com/minzzn/walla-survey-flow/commit/8f168e1) | `feat` | 로직 캔버스의 Q5 카드에 남아있던 하드코딩된 로직1/로직2 행도 제거 |
| 37 | 2026-08-31 10:29:11 | [`d469a6c`](https://github.com/minzzn/walla-survey-flow/commit/d469a6c) | `feat` | 로직 미설정 상태의 플로우차트를 피그마 참고안대로 단일 세로 배치로 재설계, 우측 패널 "문항을 선택해 주세요" 기본 상태 추가 |
| 38 | 2026-08-31 10:36:06 | [`98753c0`](https://github.com/minzzn/walla-survey-flow/commit/98753c0) | `feat` | 캔버스에서 문항을 클릭하면 로직이 없을 경우 자동으로 첫 로직 블록을 만들어 펼쳐서 보여줌 |
| 39 | 2026-08-31 10:52:40 | [`181b578`](https://github.com/minzzn/walla-survey-flow/commit/181b578) | `feat` | 중앙 패널 옵션 호버 시 나오는 이동 아이콘으로 이동 대상을 바로 편집하는 인라인 드롭다운 추가, Q5의 죽은 정적 이동 표시 제거 |
| 40 | 2026-08-31 11:00:34 | [`cc8589d`](https://github.com/minzzn/walla-survey-flow/commit/cc8589d) | `fix` | 이동 대상 드롭다운 항목을 피그마 디자인대로 체크박스 없는 문항 배지 스타일로 수정 (우측 패널 이동 드롭다운도 동일 적용) |
| 41 | 2026-08-31 11:13:06 | [`38c36cb`](https://github.com/minzzn/walla-survey-flow/commit/38c36cb) | `fix` | 이동 아이콘 활성 색상을 피그마 디자인대로 수정, 이동 대상 선택 시 우측 패널이 해당 로직으로 자동으로 펼쳐지도록 개선 |
| 42 | 2026-08-31 11:18:20 | [`11f4ae3`](https://github.com/minzzn/walla-survey-flow/commit/11f4ae3) | `fix` | 이동 아이콘 활성 색상을 파란 배경+흰 아이콘으로 재수정 (고해상도 참고안 기준) |
| 43 | 2026-08-31 11:23:59 | [`0e18084`](https://github.com/minzzn/walla-survey-flow/commit/0e18084) | `fix` | 이동 아이콘 활성 색상을 하늘색 배경(#e5f2ff)+파란 아이콘으로 최종 수정 (피그마 실제 에셋 사용) |
| 44 | 2026-08-31 11:34:43 | [`c55f487`](https://github.com/minzzn/walla-survey-flow/commit/c55f487) | `fix` | 편집 뷰와 로직 뷰에서 각각 설정한 로직 데이터가 어긋나던 버그 수정 (빈 로직 블록을 새로 만들지 않고 재사용) |
| 45 | 2026-08-31 11:38:26 | [`40f020b`](https://github.com/minzzn/walla-survey-flow/commit/40f020b) | `feat` | 첫 진입 시 우측 패널이 문항 설정 대신 로직 탭으로 시작하도록 변경 |
| 46 | 2026-08-31 12:29:31 | [`1e5c1d3`](https://github.com/minzzn/walla-survey-flow/commit/1e5c1d3) | `feat` | 우측 패널 "가이드" 버튼에 로직 설정 가이드 팝업(간단히 보기/자세히 보기) 연결 |
| 47 | 2026-08-31 12:33:32 | [`34d63fd`](https://github.com/minzzn/walla-survey-flow/commit/34d63fd) | `fix` | 가이드 팝업 닫기(X) 아이콘을 피그마 실제 에셋으로 교체 |
| 48 | 2026-08-31 12:49:18 | [`70cdfd5`](https://github.com/minzzn/walla-survey-flow/commit/70cdfd5) | `feat` | 로직 캔버스에서 실제 로직이 설정된 문항은 응답별 이동 행이 있는 카드로 펼쳐지도록 구현 (Q5 분기 레이아웃 포함) |
| 49 | 2026-08-31 13:08:25 | [`8de4803`](https://github.com/minzzn/walla-survey-flow/commit/8de4803) | `fix` | Q5 분기 로직을 추가했다가 삭제하면 곡선 커넥터가 예전 좌표에 남아있던 버그 수정 |
| 50 | 2026-08-31 13:25:40 | [`894366a`](https://github.com/minzzn/walla-survey-flow/commit/894366a) | `feat` | 옵션 하나에 로직을 걸면 나머지 옵션은 자동으로 "다음 문항으로" 로직이 생성되도록 구현 |
| 51 | 2026-08-31 13:30:56 | [`02ae6c7`](https://github.com/minzzn/walla-survey-flow/commit/02ae6c7) | `feat` | 이동 대상이 바로 다음 문항이면 Qn 배지 대신 "다음 문항으로" 텍스트를 보여주도록 변경 |
| 52 | 2026-08-31 13:38:52 | [`a8f0018`](https://github.com/minzzn/walla-survey-flow/commit/a8f0018) | `fix` | Q8로 가는 로직이 활성화돼도 그 직행선이 항상 회색으로 남아있던 버그 수정 |
| 53 | 2026-08-31 13:49:31 | [`e1660be`](https://github.com/minzzn/walla-survey-flow/commit/e1660be) | `fix` | Q5 분기 선 색상이 문항 선택이 아니라 지금 펼쳐진(활성화된) 로직 블록 기준으로 켜지도록 수정 |
| 54 | 2026-08-31 14:06:27 | [`985dd68`](https://github.com/minzzn/walla-survey-flow/commit/985dd68) | `feat` | 분기 선 위에 답변 번호("2 OR 3")와 활성 상태를 보여주는 알약 배지 추가 |
| 55 | 2026-08-31 14:13:24 | [`ea4170b`](https://github.com/minzzn/walla-survey-flow/commit/ea4170b) | `fix` | 로직이 설정된 Q5의 선택이 해제되면 분기 레이아웃 자체가 사라지던 버그 수정 |
| 56 | 2026-08-31 14:17:23 | [`5f60ccd`](https://github.com/minzzn/walla-survey-flow/commit/5f60ccd) | `fix` | 다른 문항이 활성화되면 Q5 카드는 한 줄로 접히되 분기 레이아웃/선은 유지되도록 수정 |
| 57 | 2026-08-31 14:28:19 | [`9195305`](https://github.com/minzzn/walla-survey-flow/commit/9195305) | `fix` | 분기 그래프가 로직1의 실제 이동 대상(5->7 등)을 따라가지 않고 항상 5->6/5->8로 고정돼 있던 문제 수정 |
| 58 | 2026-08-31 14:34:56 | [`1ad6fe2`](https://github.com/minzzn/walla-survey-flow/commit/1ad6fe2) | `fix` | 선택지가 모두 같은 로직으로 몰려 카드가 펼쳐지면 다음 문항 박스와 겹치던 문제 수정 |
| 59 | 2026-08-31 14:41:46 | [`d0e80da`](https://github.com/minzzn/walla-survey-flow/commit/d0e80da) | `fix` | Q6/Q7도 로직으로 펼쳐지면 다음 카드와 겹치던 문제 수정 (모든 카드를 실제 높이 기준으로 이어 붙이도록 일반화) |
| 60 | 2026-08-31 14:48:03 | [`2f48805`](https://github.com/minzzn/walla-survey-flow/commit/2f48805) | `fix` | Q8에 로직 설정 시 카드가 "제출하기" 종료 노드와 겹치던 문제 수정 |
| 61 | 2026-08-31 15:09:04 | [`6f0ffbd`](https://github.com/minzzn/walla-survey-flow/commit/6f0ffbd) | `feat` | 자동 생성된 "그 외 응답" 로직을 삭제하면 다시 자동으로 생기지 않고 계속 삭제된 채로 유지되도록 구현 |
| 62 | 2026-08-31 15:18:50 | [`dcb50ba`](https://github.com/minzzn/walla-survey-flow/commit/dcb50ba) | `fix` | 카드가 커져서 캔버스 기본 높이(977px)를 넘으면 연결선이 SVG 자체 클리핑으로 안 보이던 문제 수정 |
| 63 | 2026-08-31 15:30:08 | [`e37527e`](https://github.com/minzzn/walla-survey-flow/commit/e37527e) | `feat` | Q5 전용이던 분기 그래프 시각화를 Q6까지 일반화 (예: 6->7 대 6->8) |
| 64 | 2026-08-31 15:37:51 | [`c42c2ea`](https://github.com/minzzn/walla-survey-flow/commit/c42c2ea) | `fix` | Q5->Q8처럼 두 문항을 건너뛸 때 중간 연결선이 엉뚱한 위치(x좌표 고정)에 그려지던 문제 수정 |
| 65 | 2026-08-31 15:49:17 | [`86ceb81`](https://github.com/minzzn/walla-survey-flow/commit/86ceb81) | `feat` | Q5->Q8와 Q6->Q8가 동시에 걸려도 두 분기가 함께 그려지도록 수정 |
| 66 | 2026-08-31 15:58:19 | [`be0b690`](https://github.com/minzzn/walla-survey-flow/commit/be0b690) | `fix` | 동시 분기에서 Q6 배지가 Q7 카드에 가려지고 두 선과 겹쳐 보이던 문제 수정 |
| 67 | 2026-08-31 16:03:08 | [`a82f36a`](https://github.com/minzzn/walla-survey-flow/commit/a82f36a) | `fix` | (잘못 짚은 수정 - 68번에서 되돌림) 중앙 패널 옵션 로직 아이콘의 기본 흰색 배경 제거 |
| 68 | 2026-08-31 16:08:14 | [`ec4067e`](https://github.com/minzzn/walla-survey-flow/commit/ec4067e) | `fix` | 67번 되돌리고, 실제로는 편집/로직 탭의 "로직" 아이콘 SVG에 박혀있던 흰 배경 사각형을 제거 |
| 69 | 2026-08-31 16:22:42 | [`0bc51d6`](https://github.com/minzzn/walla-survey-flow/commit/0bc51d6) | `feat` | 로직 캔버스 카드도 이동 대상이 다음 문항이면 배지 대신 "다음 문항으로" 텍스트로 표시 |
| 70 | 2026-08-31 16:28:54 | [`64bc8a5`](https://github.com/minzzn/walla-survey-flow/commit/64bc8a5) | `feat` | 이동 목적지가 같아진 로직 블록들을 자동으로 하나로 합치도록 구현 |
| 71 | 2026-08-31 16:40:51 | [`372f5f9`](https://github.com/minzzn/walla-survey-flow/commit/372f5f9) | `feat` | 로직 블록 병합을 이동 대상 변경뿐 아니라 모든 상태 변경 경로에서 실시간으로 적용 |
| 72 | 2026-08-31 16:47:36 | [`667004b`](https://github.com/minzzn/walla-survey-flow/commit/667004b) | `fix` | 자동 "그 외" 블록도 이동 대상이 같으면 병합 대상에 포함하도록 수정 |
| 73 | 2026-08-31 17:01:20 | [`6b93a11`](https://github.com/minzzn/walla-survey-flow/commit/6b93a11) | `feat` | 자동 "그 외" 블록의 답변도 직접 수정 가능하도록 구현 (수정 시 명시적 로직으로 승격) |
| 74 | 2026-08-31 17:07:47 | [`53b4b07`](https://github.com/minzzn/walla-survey-flow/commit/53b4b07) | `fix` | 분기 선 활성화를 로직1 선택 여부 기준의 상호 배타적 상태로 수정 (둘 다 비활성인 애매한 상태 제거) |
| 75 | 2026-08-31 17:21:42 | [`a9273ed`](https://github.com/minzzn/walla-survey-flow/commit/a9273ed) | `feat` | "선택하지 않았을 때" 조건일 때 실제로 걸리는 답변(보완집합) 기준으로 배지·칩·그 외 응답 계산 |
| 76 | 2026-08-31 17:46:22 | [`703db5a`](https://github.com/minzzn/walla-survey-flow/commit/703db5a) | `fix` | 여러 옵션이 하나로 합쳐진 로직 블록에서 옵션 하나만 이동 대상을 바꾸면 다른 옵션도 같이 바뀌던 문제 수정 |
| 77 | 2026-08-31 18:55:22 | [`19e0f52`](https://github.com/minzzn/walla-survey-flow/commit/19e0f52) | `feat` | 답변이 세 곳 이상의 서로 다른 문항으로 나뉘는 분기도 그래프에 전부 표시하도록 일반화 |
| 78 | 2026-08-31 19:06:28 | [`e00d765`](https://github.com/minzzn/walla-survey-flow/commit/e00d765) | `fix` | 분기 선이 문항 카드 뒤에 가려 어디로 가는지 안 보이던 문제 수정 (카드 폭을 확실히 벗어나도록 lane 계산 조정) |
| 79 | 2026-08-31 19:12:52 | [`a1e7643`](https://github.com/minzzn/walla-survey-flow/commit/a1e7643) | `fix` | 편집 탭 옵션 이동 표시 및 로직 탭 캔버스 카드에서 "다음 문항으로" 텍스트를 없애고 항상 Qn 배지로 표시 |
| 80 | 2026-08-31 19:16:25 | [`6688681`](https://github.com/minzzn/walla-survey-flow/commit/6688681) | `fix` | 편집 탭 옵션 이동 드롭다운 목록에서 바로 다음 문항 선택지 제거 |
| 81 | 2026-08-31 19:20:39 | [`0776c04`](https://github.com/minzzn/walla-survey-flow/commit/0776c04) | `fix` | 이동 대상이 바로 다음 문항이면 편집/로직 탭 모두에서 아이콘+Qn 배지를 아예 표시하지 않도록 수정 |
| 82 | 2026-09-01 09:47:08 | [`e6d612c`](https://github.com/minzzn/walla-survey-flow/commit/e6d612c) | `fix` | 우측 로직 패널에서 답변이 로직 블록 두 개에 동시에 배정되던 오류 및 새 로직에서 답변 하나만 골라도 나머지가 즉시 딸려 들어오던 오류 수정 |
| 83 | 2026-09-01 11:21:06 | [`e35faf3`](https://github.com/minzzn/walla-survey-flow/commit/e35faf3) | `fix` | 자동 "그 외" 블록이 바로 다음 문항을 가리키면 우측 패널 목록에서 숨기고, 그래프(캔버스)에는 그대로 표시 |
| 84 | 2026-09-01 11:37:12 | [`f731a20`](https://github.com/minzzn/walla-survey-flow/commit/f731a20) | `feat` | 주관식 문항 Q9, Q10 추가 (피그마 node 773:28758 기준, 로직 설정 불가·다음 문항 이동만 가능) |
| 85 | 2026-09-01 11:45:09 | [`3a7a7bc`](https://github.com/minzzn/walla-survey-flow/commit/3a7a7bc) | `feat` | Q7, Q8에 로직을 설정하면 그래프에도 분기가 반영되도록 분기 시스템 확장 |
| 86 | 2026-09-01 11:52:06 | [`a192ea5`](https://github.com/minzzn/walla-survey-flow/commit/a192ea5) | `feat` | 그래프 연결선에 실선(실제 분기)/점선(기본 흐름·그 외) 구분 적용 |

실제로 화면에서 작업이 진행된 날짜는 2026-08-28 저녁(1~4번, 배포/워처 설정) →
2026-08-29 새벽(5~27번) → 2026-08-29 낮(28~34번) → 2026-08-31(35~48번)입니다.

- 저장소: https://github.com/minzzn/walla-survey-flow
- PR: https://github.com/minzzn/walla-survey-flow/pull/1
