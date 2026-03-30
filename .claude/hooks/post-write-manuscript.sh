#!/bin/bash
# Post-Write Hook: 원고 파일 저장 후 인간화 리뷰 알림
# stdin으로 tool_input JSON 수신

INPUT=$(cat)
FILE_PATH=$(echo "$INPUT" | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' | head -1 | sed 's/.*"file_path"[[:space:]]*:[[:space:]]*"//' | sed 's/"$//')

# 04-원고/ 디렉토리의 원고 파일인지 확인 (v1_초고 또는 v2 파일)
if echo "$FILE_PATH" | grep -q "04-.*ep-.*_v[0-9]"; then
  EP_NUM=$(echo "$FILE_PATH" | grep -o 'ep-[0-9]*' | head -1)
  echo "[HOOK] ${EP_NUM} 원고 저장 완료. humanization-review 스킬 실행이 필요합니다. (점수 70 미만 시 즉시 수정)"
fi
