# Harness Automation 참조

Bug Hero 프로젝트의 Claude Code Harness 자동화 설정 일람.

## 1. Claude Code Hooks (settings.local.json)

| Hook | 이벤트 | 트리거 조건 | 동작 |
|------|--------|-----------|------|
| post-write-manuscript | PostToolUse(Write) | 04-원고/ 경로에 ep-*_v*.md 저장 | 인간화 리뷰 알림 |
| pre-commit-check | PreToolUse(Bash) | git commit 명령 실행 | 현재작업상태.md 동기화 체크 |
| session-stop-reminder | Stop | 세션 종료 | 미커밋 원고 + 트래킹 파일 업데이트 알림 |

스크립트 위치: `.claude/hooks/`

## 2. Git Hooks (.git/hooks/)

| Hook | 동작 | 차단 여부 |
|------|------|----------|
| pre-commit | 원고 내 마크다운 형식(#, **, -) 검출 | 마크다운 발견 시 차단 |
| pre-commit | 현재작업상태.md 미동기화 경고 | 경고만 (차단 안 함) |
| commit-msg | 커밋 메시지 형식 검증 (feat/fix/refactor/style/docs) | 형식 위반 시 차단 |

## 3. 정기 스케줄 (CronCreate — 세션 내)

| 주기 | 내용 | Cron |
|------|------|------|
| 매시 :17 | 세션 중간 체크 (미커밋 원고, 현재작업상태 최신 여부) | `17 * * * *` |
| 3시간마다 :43 | 능력 빈도 감사 (5화당 획득/합성 빈도) | `43 */3 * * *` |
| 4시간마다 :07 | 진행률 리포트 (완료 에피소드, 오늘 작업량) | `7 */4 * * *` |

세션 시작 시 `.claude/scheduled_tasks.md` 참조하여 재등록.

## 4. Task 시스템 활용 패턴

### 집필 파이프라인 (auto-agents Mode A)
- Phase 시작 시 TaskCreate → Phase 완료 시 TaskUpdate(completed)
- T1~T8 총 8개 Task로 8단계 파이프라인 추적

### 수정 파이프라인 (auto-agents Mode B)
- 수정 대상 화별로 Task 생성 → Teammate/Sub-agent에 owner 할당
- blockedBy로 Phase 의존성 표현

### 독립 작업
- 일관성 검사, 재미평가 등 단독 스킬 실행 시에도 Task 생성 권장
- 병렬 작업 시 Task로 진행률 가시화

## 5. 메모리 시스템 (auto-memory)

| 유형 | 파일 | 용도 |
|------|------|------|
| user | user_profile.md | 오라버니 프로필, 작업 선호 |
| feedback | feedback_writing_style.md | 집필 스타일 금지사항 10종 |
| feedback | feedback_ep001_tone.md | Ep.001 확립 톤 (7회 리라이트 결과) |
| feedback | feedback_tone_brightness.md | 밝은 톤 유지 규칙 |
| feedback | feedback_plot_logic.md | 무시→압도→경악 먹치킨 논리 |
| project | project_writing_pipeline.md | 7단계 집필 파이프라인 |
| project | project_progress_snapshot.md | 진행률 스냅샷 |
| reference | reference_tracking_files.md | 트래킹 파일 업데이트 규칙 |
