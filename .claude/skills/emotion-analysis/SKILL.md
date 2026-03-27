---
name: emotion-analysis
description: 캐릭터 감정 추적 및 분석. 먹치킨 주인공 특화 심리(타워 적응, 능력 발견, 전투 스트레스) 포함.
---

# Emotion Analysis - 감정 분석 스킬

## Trigger
- "감정 분석", "심리 추적", "감정 그래프"

## Workflow

### Phase 1: Target Selection
1. 분석 대상 캐릭터/범위 확인
2. 캐릭터 파일 + 기존 감정 추적 로드

### Phase 2: Scene Analysis
1. 씬 내 이벤트 추출
2. 8가지 감정 스코어링 (1-10)
3. 지배/보조 감정 식별
4. 감정 3층 분석 (표면/의식/무의식)
5. 신체 반응 키워드 추출

### Phase 3: Protagonist Psychology
1. 타워 적응도 평가 (1-10)
2. 능력 발견/성장 만족도 (1-10)
3. 일상 괴리감 수준 (1-10)
4. 전투 스트레스 수준
5. 리더십 압박감

### Phase 4: Motivation Analysis
1. 외적 목표 (Want) vs 내적 필요 (Need)
2. 먹치킨 주인공의 성장 심리 발동 여부
3. 대화 서브텍스트

### Phase 5: File Update
1. `05-심리추적/감정추적/[캐릭터].md` 업데이트
2. `05-심리추적/동기맵/[캐릭터].md` 업데이트

## Output
```
# 감정 분석: [캐릭터] - [범위]
## 감정 스코어 | 3층 분석 | 주인공 심리 | 동기 분석
```
