# Sub-Agent Briefing: Reviewer (리뷰 에이전트용)

이 템플릿은 Lead가 Phase 5 리뷰 Sub-agent에게 전달하는 브리핑 형식이다.
`[PLACEHOLDER]`는 Lead가 실제 값으로 대체한다.

---

## R1: Humanization Depth Review 브리핑

Phase 4B 기계적 스캔(톤 파괴어, SVO, em-dash, 분리호칭) **완료됨 — 생략**.

### 입력
- 원고: [MANUSCRIPT_PATH]
- 4B 스캔 결과 요약: [SCAN_SUMMARY] (N건 수정됨)

### 심층 검사 항목 (이것에 집중)
1. **대화 자연스러움**: 정보전달형 대사 비율, 대화 노이즈 존재(3회+), 캐릭터 음성 구분도
2. **갈등 해결 속도**: 해결-잔여 긴장 존재, 갈등 깊이 규칙 (소2/중4/대8ep)
3. **구조 다양성**: 에피소드 구조 패턴, 성장 곡선 비균일성, 비합리적 행동(1회+)
4. **감각 다양성**: 씬당 감각 3종+, 동일 조합 연속 여부, 환경 묘사 변주
5. **코미디 톤 일관성**: 유쾌한 톤 유지, 코미디 비트 존재, 페널티 유머 누락 여부

### 출력 형식
- 점수: 0-100
- P1 (Critical) 수정 사항: 목록
- P2 (Major) 수정 사항: 목록
- 4B 잔존 확인: 누락분 있으면 P1 추가

### 참조 규칙
- `core-rules.md` §9-11 자동주입됨 — **humanization-rules.md 별도 Read 불필요**
- 금지패턴 전체 목록이 필요한 경우만 humanization-rules.md Read

---

## R2: Consistency + Narrative Structure 브리핑

### 입력
- 원고: [MANUSCRIPT_PATH]
- 아웃라인: [OUTLINE_PATH]
- 컨텍스트 요약 (Lead 전달): [CONTEXT_SUMMARY]
  <!-- Phase 1에서 로드한 캐릭터/메인플롯/서사줄기/복선/쾌감카운터 요약 -->

### 일관성 검사
1. 복선 상태 감사 (아웃라인 vs 원고)
2. **능력 시스템 검증**: 생체모방 능력의 효과/한계가 이전 화와 일치하는가, 합성 조합의 논리성
3. 능력 페널티 일관성: 동일 능력의 페널티가 매번 동일한가
4. 전투씬: 능력 쇼케이스 6단계 준수, 파티 역할 분담, 페널티 유머
5. 능력 업그레이드: Before/After, 자기인식, 타인반응, 구체적 결과

### 서사구조 검사
1. 쾌감 패턴 배치 (E패턴 연속2회 금지, 저사용 점검)
2. 코미디 비트 밀도 (씬당 1개+ 확인)
3. 화 성격 유형 정합성 (3연속 금지)
4. 페이싱 평가

### 출력 형식
- 점수: 0-100
- Critical / Major / Minor 분류 목록

### 참조 규칙
- `core-rules.md` §12-13 자동주입됨 — **plot-structure.md, entertainment-density.md 별도 Read 불필요**
- `reference/world-building.md`는 타워/능력 검증 필요 시 Read 허용
- Phase 1 컨텍스트 요약을 우선 사용

---

## Change Log
- 2026-03-25: Bug Hero 프로젝트 전용으로 수정 (시대착오어→톤 파괴어, 삼국시대 검증→능력 시스템 검증, 코미디 톤 일관성 검사 추가)
