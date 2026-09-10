# Project agent memory

This file is the project's committed home for project-intrinsic agent knowledge: build, test, release, architecture, and sharp-edge notes that should travel with the code.

- Add durable project-specific notes here as they are discovered through real work.

## Build the site locally

- Hugo is vendored via npm, not on PATH. Run `make setup` (npm install) once, then
  `node_modules/.bin/hugo -e dev -DFE` (or `make build` / `make site`). The theme is the
  `github.com/layer5io/academy-theme` Hugo module; its layouts live in
  `~/Library/Caches/hugo_cache/modules/filecache/.../layer5io/academy-theme@<ver>/layouts`.

## Exam / quiz schema (`type: "test"`)

- Challenge exams live at `content/challenges/<orgUUID>/<slug>/exam.md` with front matter
  `type: "test"`, `pass_percentage`, and a `questions:` list. Allowed question types in use:
  `single-answer` (marks 2, one correct) and `multiple-answers` (marks 3, 2+ correct; full marks
  need ALL correct and NO incorrect). The theme also parses `short-answer`/`true-false`/`essay`,
  but the DO-CAIE exam intentionally uses ONLY single/multiple-answer.
- Per option: `id`, `text`, and `is_correct: true` on correct ones only. `correct_answer` is a
  letter (single) or comma list e.g. `"a,b,c"` (multiple).
- **Pool draw:** set `number_of_questions: <N>` to draw N per attempt. The theme partial
  `partials/test/single.html` requires the bank to be an exact multiple of N, computes
  `numberOfQuestionSets = bank/N`, and auto-defaults `maxAttempts` to the set count. `totalMarks`
  is summed from the FIRST N questions only, so every set of N should carry equal marks. The
  DO-CAIE exam is a 180-question bank with `number_of_questions: 60` -> 3 representative sets.

## DO-CAIE exam domain blueprint (weights sum to 100%)

D1 AI-Native Cloud fundamentals 12% · D2 Foundation models/serverless inference/catalog 14% ·
D3 Building agents (Gradient AI Platform) 18% · D4 Knowledge Bases & RAG 14% ·
D5 GPU compute/1-Click Models/serving 14% · D6 Cloud native AI ops (Meshery & DOKS) 16% ·
D7 Production engineering (routing/security/observability/responsible AI) 12%.
Authoritative source: the certification-overview `exam-format-and-scoring` page and `CURRICULUM.md`.
The 180-question pool distributes as 22/25/32/25/25/29/22.

## Maintaining this file

Keep this file for knowledge useful to almost every future agent session in this project.
Do not repeat what the codebase already shows; point to the authoritative file or command instead.
Prefer rewriting or pruning existing entries over appending new ones.
When updating this file, preserve this bar for all agents and keep entries concise.
