# CLAUDE.md — Core Index Router
# This file has a 150-line cap. Routing only, no rule bodies here.
# Model tier terminology (this project uses abstract tiers only, never hardcode specific model names):
#   STRONG = the highest-tier model currently available
#   MID    = mid-tier primary model
#   SMALL  = cheapest batch-execution model

## Startup Sequence (all models, execute verbatim)

1. Read this file.
2. Read rules_core/01_WEAK_MODEL_CORRECTIONS.md
   (STRONG models may skip this day-to-day; but if a task template explicitly requires reading it, the template takes priority and it must be read).
2b. Read all files in .ruler/rules/ (behavioral baseline rules).
3. Read rules_core/02_DISPATCH_PROTOCOL.md.
4. Read ai/current_state.md (if it exists).
5. Output a load-confirmation line: "LOADED: [list of files read]".
6. Output the task card (format per rules_core/01, rule 1.1).
7. Begin the task.

## File Map

| Path | Content | Who reads it | When |
|------|------|------|--------|
| rules_core/01_WEAK_MODEL_CORRECTIONS.md | Corrections for the three common blind spots | SMALL/MID | Every session, mandatory |
| rules_core/02_DISPATCH_PROTOCOL.md | Dispatch and circuit-breaker protocol | All | Every session, mandatory |
| rules_core/03_JUDGMENT_CHECKLIST.md | Senior-level judgment checklist | All | At decision points |
| templates/TEMPLATE_SEARCH.md | Search task template | Dispatcher | When assigning a search task |
| templates/TEMPLATE_IMPLEMENT.md | Implementation task template | Dispatcher | When assigning an implementation task |
| templates/TEMPLATE_REFACTOR.md | Refactor task template | Dispatcher | When assigning a refactor task |
| templates/TEMPLATE_REVIEW.md | Review task template | Dispatcher | When assigning a review task |
| ai/project_overview.md | Project goals and scope | All | Session start |
| ai/current_state.md | Current state | All | Session start + on completion |
| ai/decisions.md | Decision log (append-only) | All | When a decision is made |
| .ruler/rules/ | Behavioral baseline rules | All | Every session, mandatory |
| skills/ | Skill definitions (SKILL.md per skill) | All | As triggered by task type |
| AGENTS.md | Legacy agent instructions | All | See conflict resolution order below |

## Tiered Behavior Guidelines

### [STRONG MODEL — open zone: give direction, not rigid steps]
- Responsibilities: strategy, architecture decisions, rule-making, unblocking MID when stuck.
- Do not perform: bulk file reads, format conversion, repeated application of known patterns → delegate to SMALL.
- Latitude: may question and revise this governance, but any revision must be logged in decisions.md.

### [MID MODEL — semi-defined zone]
- Responsibilities: general implementation, debugging, review.
- On hitting an architecture-level decision (a structural change touching 3+ files) → stop, escalate to STRONG.
- Stuck on the same subtask twice → mandatory escalation, with full error logs attached (see rules_core/02).

### [SMALL MODEL — rigid-step zone: only do what is explicitly defined]
- Responsibilities: bulk apply, file-read summaries, format conversion, running tests and reporting results.
- Forbidden: any "helpful improvement" not listed on the task card.
- Forbidden: self-verifying your own output (see rules_core/02 independent verification mechanism).
- One error → stop immediately, escalate and report, do not retry on your own.

## Project-Type Routing (if applicable)

User declares a project type → load the matching file under skills/project-types/:
  python-data / web-app / fullstack / cli-tool / api-service
Not declared → do not load any project-type file.
vibesec-skill loads only for web-app or fullstack + security-related tasks.

## Memory Update Obligation

After completing any task with state impact (new feature, fix, decision, risk discovered):
1. Rewrite ai/current_state.md (the only memory file allowed a full rewrite).
2. If a decision was made → append to ai/decisions.md with a date [YYYY-MM-DD].
Skipping this is forbidden. Skipping it = the task is not complete.

## Conflict Resolution Order

1. User's explicit instruction for the current turn
2. rules_core/01 (error-correction blind spots)
3. rules_core/02 (dispatch/circuit-breaker)
4. rules_core/03 (judgment checklist)
5. The rest of this file
6. Legacy AGENTS.md / START_HERE.md (if conflicting with this file, this file wins)
