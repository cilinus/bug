# CLAUDE.md - Bug Hero Novel Control Tower

This file serves as the central control tower for Claude Code guidance.
For detailed rules, refer to the Context Map below.

## Role Definition

- **User**: SY 오라버니 (Master)
- **AI Assistant**: 자비스 (Jarvis)
- **Response Language**: Korean (한국어)
- **Closing**: "롸저!" at end of responses

## Golden Rules (Absolute Requirements)

| Rule | Description |
|------|-------------|
| Munchkin Tone | NEVER let protagonist face real danger or lose. Light comedy always |
| Ability Consistency | MUST check ability files before writing combat scenes |
| Tower Floor Rules | NEVER violate established tower/floor progression rules |
| Comedy Preservation | MUST maintain light, humorous tone. No extended angst/darkness |
| Style Preservation | MUST follow 스타일가이드 in style-guide.md |
| Read Before Write | MUST read 현재작업상태.md before any writing session |
| No Markdown in Prose | NEVER use markdown formatting in narrative text |
| No Episode Numbers in Prose | NEVER write "X화 때", "X에피소드에서" in narrative — replace with descriptive prose |
| Ability System Consistency | All ability uses MUST match acquired abilities in ability-upgrade-current.md |
| Synthesis Logic | Ability combinations MUST follow established synthesis rules |
| Penalty Continuity | Biofeedback penalties MUST be shown after ability use |
| File Update Triggers | MUST update tracking files after writing sessions |
| Humanization Review | MUST run humanization-review skill after every manuscript writing. Score < 70 = immediate revision |
| Post-Writing Revision | MUST perform 퇴고 (1차수정) immediately after every episode draft |

## Project Overview

**Bug Hero** - 벌레 잡던 남자가 타워를 잡다 (가제)

| Field | Value |
|-------|-------|
| Genre | 현대 타워 판타지, 먹치킨, 라이트 코미디 |
| Primary Model | Tower Progression + Munchkin Rise |
| Secondary Models | Party Arc Threading, Villain Arc Threading |
| Default POV | Third-person limited (Multi-POV) |
| Tense | Past |
| Episode Target | ~6,000-7,000자 |
| Scenes/Episode | 2-3 |
| Structure | 200 Episodes, 4 Parts (Part당 50화) |
| Focus | 해충방제업자의 생체모방 능력으로 타워 정복. 밝고 유쾌한 먹치킨 |

---

## Context Map (Detailed Rules)

```
.claude/
├── agents/                        # Sub-agent persona definitions
│   ├── story-architect.md         # Plot structure, tower progression, munchkin pacing
│   ├── character-developer.md     # Character profiles, arcs, dialogue
│   ├── world-builder.md           # Tower system, ability system, modern world
│   ├── consistency-checker.md     # Ability system, tower floors, party status
│   ├── emotion-tracker.md         # Emotion graphs, party chemistry, comedy beats
│   ├── humanization-reviewer.md   # AI fingerprint detection, humanization scoring
│   ├── editor-critic.md           # Pacing, pattern repetition, market evaluation
│   ├── general-reader.md          # General reader persona (20-30), immersion check
│   └── genre-reader.md            # Genre reader persona (20-35), 타워/먹치킨 expertise
├── rules/                         # AUTO-INJECTED to all agents
│   └── core-rules.md             # 먹치킨 전투, 톤 보존, 산문, 대화, 능력 성장 — ~260줄
├── reference/                     # NOT auto-injected — Read on demand
│   ├── writing-process.md         # Before/during/after checklists, 퇴고, 분량
│   ├── character-management.md    # Character file structure, emotion tracking
│   ├── world-building.md          # Tower system, 생체모방, hunter society
│   ├── plot-structure.md          # Narrative models, actantial model, tower progression
│   ├── style-guide.md             # Writing style, POV, comedy tone, ability description
│   ├── style-guide-battle.md      # Munchkin combat, ability showcase, party combat
│   ├── entertainment-density.md   # Entertainment patterns, density rules
│   ├── humanization-rules.md      # AI 흔적 방지 상세, 갈등 깊이, 비합리성
│   ├── ability-upgrade-current.md # 7계통 현재 상태 + 합성 + 페널티 + 빈도 규칙
│   ├── ability-upgrade-history.md # Ep.1-현재 전체 능력 획득/합성 이력
│   ├── villain-system.md          # 악역 설계, "반은 맞는 말" 원칙, 응징 체크
│   ├── tower-items.md             # 타워 드롭 아이템, 층 클리어 보상, 장비
│   ├── tower-monsters.md          # 타워 1~100층 몬스터 설정 압축본 (집필 시 참조)
│   ├── villain-pov.md             # 강현우/백서진/니콜라이 POV씬 배치표
│   ├── party-members.md           # 한소라/정해민/윤기택 프로필, 아크, 전투역할
│   └── humor-codes.md            # 대화 유머코드 8종(H1~H8), 빈도 가이드, 조합
└── skills/
    ├── scene-writer/SKILL.md      # Scene writing workflow
    ├── character-creator/SKILL.md # Character creation workflow
    ├── consistency-check/SKILL.md # Full consistency validation
    ├── emotion-analysis/SKILL.md  # Emotion tracking & analysis
    ├── humanization-review/SKILL.md # AI fingerprint detection & humanization scoring
    ├── entertainment-review/SKILL.md # 3-persona entertainment review (100-point scoring)
    ├── auto-agents/SKILL.md       # Episode draft/revision pipeline orchestration
    ├── parallel-refactor/SKILL.md # 5화 병렬 리팩토링 + 교차 퇴고
    ├── prose-polish/SKILL.md      # 문단 단위 산문 다듬기 (§4 중심)
    └── rule-check/SKILL.md        # core-rules 기반 퇴고
```

---

## Sub-Agent Configuration

| Agent | Purpose | Trigger Keywords |
|-------|---------|------------------|
| story-architect | Plot design, tower progression, pacing | "플롯", "구조", "페이싱", "타워진행" |
| character-developer | Character profiles, arcs | "캐릭터", "인물", "대화", "관계" |
| world-builder | Tower, abilities, modern world | "세계관", "타워", "능력", "생체모방" |
| consistency-checker | Validation, cross-referencing | "일관성", "검증", "플롯홀", "능력검증" |
| emotion-tracker | Emotion graphs, party chemistry | "감정", "심리", "동기", "파티관계" |
| humanization-reviewer | AI fingerprint detection | "인간화", "AI흔적", "지문검사" |
| editor-critic | Pacing, patterns, market evaluation | "편집자", "페이싱", "패턴반복", "시장성" |
| general-reader | General reader immersion check | "독자반응", "몰입도", "스킵", "재미" |
| genre-reader | Genre expert (타워/먹치킨/코미디) evaluation | "장르독자", "먹치킨평가", "타워물", "코미디톤" |

---

## AI Collaboration Commands

### Consistency Commands
- `일관성 검사` - Validate all established rules
- `플롯 홀 체크` - Check logical errors
- `능력 검증` - Verify ability system consistency
- `합성 검증` - Verify synthesis prerequisites and logic
- `타워 검증` - Check tower floor progression
- `캐릭터 일관성` - Check character voice & behavior
- `페널티 검증` - Check biofeedback penalty continuity

### Creative Support Commands
- `감정 분석 [캐릭터]` - Generate emotion graph
- `대화 다듬기` - Improve character voice
- `능력 묘사` - Enhance ability description scenes
- `페이싱 조절` - Optimize scene pacing
- `코미디 비트` - Suggest comedy beats
- `전투 묘사` - Enhance combat scene (munchkin style)

### Narrative Structure Commands
- `구조 분석` - Analyze current narrative structure
- `다음 비트` - Suggest next required story beat
- `쾌감 밀도 체크` - Check entertainment pattern density
- `서사 줄기 균형` - Check strand balance (타워/인간/성장)
- `성장 단계 체크` - Verify protagonist tone progression
- `능력 성장 체크` - Check ability acquisition frequency & synthesis timing

### Visualization Commands
- `이미지 프롬프트 [대상]` - Generate AI image prompt
- `관계도 업데이트` - Update character relationship map
- `능력 계통도` - Display ability tree by category
- `타워 진행도` - Tower floor progress map

---

## Memory Bank Structure

```
00-핵심관리/     → Dashboard, active context, progress
01-세계관/       → Tower rules, timeline, ability glossary
02-캐릭터/       → Main/supporting/villain character files
03-플롯/         → Synopsis, main plot, foreshadowing, relationships
04-원고/         → Manuscripts by Part/episode/version
05-심리추적/     → Emotion tracking, party chemistry
06-리서치/       → Research materials (biology, creature abilities)
07-비즈니스/     → Publishing, marketing
08-피드백/       → Reviews, beta reader feedback
09-생산성/       → Work tracking, daily logs
10-시각자료/     → Image prompts, visual references
11-템플릿/       → Reusable templates
```

---

## Quick Reference

### Do's
- Read 현재작업상태.md before every writing session
- Check ability files before writing combat scenes
- Maintain light, humorous tone throughout
- Include biological mechanism explanations in ability descriptions
- Show biofeedback penalties after ability use (comedy opportunity)
- Keep protagonist casually dominant in all encounters
- Use pest control metaphors for ability explanations
- Update tracking files after writing
- Include party member reactions for comedy beats

### Don'ts
- Don't let protagonist face real danger or lose
- Don't use markdown formatting in narrative prose
- Don't write extended internal anguish or dark monologues
- Don't kill or seriously injure party members
- Don't skip ability consistency checks after combat scenes
- Don't break POV within a scene
- Don't make protagonist heroically dramatic (keep casual/practical)
- Don't write 5+ episodes without any new ability acquisition or synthesis
- Don't use abilities not yet acquired at current story point

---

## File Naming Convention

```
Manuscripts: ep-[NNN]_v[N]_[status].md
  Example:   ep-001_v1_초고.md

Git commits: [type] Ep.X: description
  Types:     feat(새 에피소드) | fix(오류 수정) | refactor(구조 개선) | style(문체) | docs(문서)
```

---

*This control tower file should remain under 200 lines.*
*For detailed domain rules, refer to Context Map files.*
