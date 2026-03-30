#!/bin/bash
# Stop Hook: 세션 종료 시 트래킹 파일 업데이트 알림

cd "D:/Novel_WorkSapce/Bug_Hero"

# 원고 파일 중 uncommitted 변경이 있는지 확인
DIRTY_MANUSCRIPTS=$(git diff --name-only 2>/dev/null | grep "04-" || true)
DIRTY_UNSTAGED=$(git ls-files --others --exclude-standard 2>/dev/null | grep "04-" || true)

if [ -n "$DIRTY_MANUSCRIPTS" ] || [ -n "$DIRTY_UNSTAGED" ]; then
  echo "[HOOK] 세션 종료 전 확인사항:"
  echo "  - 커밋되지 않은 원고 변경이 있습니다."
  echo "  - 현재작업상태.md, 진행상황.md, ability-upgrade-history.md 업데이트를 확인해주세요."
  echo "  - /push 또는 /sync로 리모트에 반영해주세요."
fi
