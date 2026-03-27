---
name: consistency-check
description: 전체 작품의 교차 검증. 타워 설정, 능력 계통, 합성 체계, 복선의 종합 일관성 검사.
---

# Consistency Check - 일관성 검사 스킬

## Trigger
- "일관성 검사", "검증", "플롯 홀 체크"

## Workflow

### Phase 1: File Loading
1. `01-세계관/세계관규칙.md` 로드
2. `01-세계관/타임라인.md` 로드
3. `01-세계관/타워배경.md` 로드
4. `03-플롯/복선추적.md` 로드
5. `03-플롯/플롯홀.md` 기존 이슈 확인

### Phase 2: Timeline Validation
1. 원고 내 시간 참조 vs 타임라인 교차
2. 사건 순서 논리성
3. 이동 시간/타워 층간 거리 정합성
4. 환경/날씨 일관성

### Phase 3: Character Validation
1. 물리적 위치 연속성
2. 정보 범위 확인
3. 감정 연속성
4. 능력/생체모방 수준 일관성

### Phase 4: Tower & Setting Validation
1. 타워 층수별 환경 설정 일관성
2. 능력 사용 시 규칙 준수 여부
3. 등급/파티 역할 일관성
4. 현대 배경 설정 (의식주, 기술) 일관성
5. 거대 세력 접촉 시 네임드 인물 사용 여부 — 타 길드/정부기관과의 외교·대결 장면에서 상대 진영 인물은 네임드를 배치할 것. 이름 없는 "직원/관계자"로만 처리하면 스케일 축소 → Minor 이슈로 지적

### Phase 5: Combat Validation
1. 파티 인원 추적
2. 장비/아이템 현실성
3. 전투 결과와 전력 대비 정합성
4. 전술/능력 조합의 합리성

### Phase 6: Ability & Synthesis Validation
1. 생체모방 능력 사용의 정확성
2. 합성 조합 일관성
3. 태봉 능력 범위의 합리적 한계
4. 7계통 능력 등급 정합성

### Phase 7: Foreshadowing Audit
1. 설치된 복선 현황
2. 회수 상태 확인
3. 미회수 복선 목록

### Output
```
# 일관성 검사 리포트 - [날짜]
## Critical / Major / Minor
## 복선 상태
## 일관성 점수: X/100
```
