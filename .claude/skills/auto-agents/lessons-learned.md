# Auto-Agents Lessons Learned (검증된 교훈) — Bug Hero

프로젝트 진행 중 축적된 핵심 교훈. 각 Phase에서 자동 적용.

| # | 교훈 | 적용 위치 |
|---|------|----------|
| L1 | 인간화 리뷰 7화 초과 시 분할 필수 | Phase 5 R1, Mode B R1 |
| L2 | 파일 소유권 완전 분리 → 충돌 0건 | Phase 7, Phase 1 |
| L3 | Sub-agent 실패 시 1회 재시도 후 Lead 직접 처리 | 모든 Sub-agent Phase |
| L4 | 톤 파괴어 전수검사 필수 — 게임 용어/과도한 앙스트 잔존율 높음 | Phase 4B, Phase 5 R1 |
| L5 | 조기 진단(3화)이 Full Part보다 효율적 | Mode B 규모 판단 |
| L6 | Sub-agent 작업 검증 필수 (미적용 누락 방지) | Phase 4 Lead 검증 |
| L7 | 이전 에피소드 원고 필독 (톤/문맥/능력 연속성) | Phase 1 |
| L8 | 전투씬은 능력 쇼케이스 3요소 필수: 상성 간파 + 능력 발동 + 주변 경악 | Phase 3, Phase 5 R2 |
| L9 | SVO 단문 연쇄는 가장 빈번한 AI 지문 — SF01-SF05 즉시 적용 | Phase 4B, Phase 6 |
| L10 | 능력 획득/합성 체크 누락 시 성장 체감 급감 | Phase 5 R2, Phase 7 |
| L11 | Phase 1에서 능력 업그레이드 의무 사전 확인 → Phase 6 재작업 방지 | Phase 1 Pre-Flight |
| L12 | R2도 7화 초과 시 분할 필수 (R2a 일관성 + R2b 서사구조) | Phase 5 R2, Mode B R2 |
| L13 | Phase 1 메타파일 조건부 로딩 — 전투/쾌감/구조 파일은 해당 시에만 | Phase 1 |
| L14 | core-rules.md를 Sub-agent 프롬프트에 자동주입 — reference/ 추가 Read 금지 강제 | Phase 3 |
| L15 | 기계적 스캔(톤 파괴어·em-dash·분리호칭 등)은 Phase 4B로 조기 이동 → R1 부담 경감 | Phase 4B |
| L16 | R1/R2/R3 리뷰 충돌 시 Phase 5.5 우선순위 적용 (세계관 > 인간화 > 서사구조) | Phase 5.5 |
| L17 | R3 쾌감·페이싱 리뷰를 Mode A에도 조건부 실행 — 소아크 마지막/대형 쾌감/페이싱 저조 시 | Phase 5 R3 |
| L18 | 코미디 비트 검사: 화당 최소 1개 코미디 비트(페널티 유머/파티 대화/하급 능력 활용) 포함 확인 | Phase 5 R1, Phase 6 |
| L19 | Phase 6 회귀 검출: 수정 패턴 3건+ → 직전 10화 Grep → Mode B 후보 기록 (자동 수정 금지) | Phase 6 |
| L20 | Mode B 폴백: Sub-agent 매핑 규모별 상세화 (Small 병렬, Medium 순차, Large 2병렬순차) | Mode B Fallback |
