#!/bin/bash
# Pre-Bash Hook: git commit 시 현재작업상태.md 업데이트 여부 체크
# stdin으로 tool_input JSON 수신

INPUT=$(cat)
COMMAND=$(echo "$INPUT" | grep -o '"command"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*"command"[[:space:]]*:[[:space:]]*"//' | sed 's/"$//')

# git commit 명령인지 확인
if echo "$COMMAND" | grep -q "git commit"; then
  # 04-원고/ 파일이 staged 되어 있는지 확인
  STAGED_MANUSCRIPTS=$(cd "D:/Novel_WorkSapce/Bug_Hero" && git diff --cached --name-only 2>/dev/null | grep "04-" || true)

  if [ -n "$STAGED_MANUSCRIPTS" ]; then
    # 현재작업상태.md도 staged 되어 있는지 확인
    STATUS_STAGED=$(cd "D:/Novel_WorkSapce/Bug_Hero" && git diff --cached --name-only 2>/dev/null | grep "현재작업상태" || true)

    if [ -z "$STATUS_STAGED" ]; then
      echo "[HOOK] 원고 파일이 커밋에 포함되어 있지만 현재작업상태.md가 업데이트되지 않았습니다. 현재작업상태.md를 함께 업데이트해주세요."
    fi
  fi
fi
