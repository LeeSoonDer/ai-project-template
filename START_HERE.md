# START_HERE.md

This is the one-file entry point for any AI coding agent using this repository as a project foundation.

## Fastest User Prompt

Use this prompt when starting a new project or opening a new AI session:

```md
Use this repository as the project foundation:
https://github.com/LeeSoonDer/ai-project-template

Read START_HERE.md first and follow it.
Keep output concise.
Ask for approval before push, pull, delete, install, secrets, GitHub changes, or global config changes.
```

If the repository has already been created from this template, use:

```md
Read START_HERE.md first and follow it.
Then help me develop this project from my idea:

[Paste idea here]
```

## Agent Startup Sequence

1. Read `AGENTS.md`.
2. Read the core memory files:
   - `ai/project_overview.md`
   - `ai/current_state.md`
   - `ai/architecture.md`
   - `ai/decisions.md`
   - `ai/risk_register.md`
3. Read the core rules:
   - `.ruler/rules/communication-style.md`
   - `.ruler/rules/approval-required-actions.md`
   - `.ruler/rules/engineering-principles.md`
   - `.ruler/rules/anti-hallucination.md`
   - `.ruler/rules/minimal-change.md`
   - `.ruler/rules/security.md`
   - `.ruler/rules/testing.md`
   - `.ruler/rules/token-discipline.md`
4. Inspect only task-relevant source files before editing.
5. Use only task-relevant skills from `skills/`.
6. Plan briefly, implement minimally, test/check, then update project memory.

## Skill Loading Rule

Do not load every skill by default.

Use skills only when the task matches:

- `skills/project-memory/SKILL.md`: project state, long-term memory, session continuity.
- `skills/planning/SKILL.md`: unclear requirements, roadmap, task breakdown.
- `skills/debugging/SKILL.md`: bug reports, errors, broken behavior.
- `skills/code-review/SKILL.md`: review, risk detection, regression checks.
- `skills/security-review/SKILL.md`: auth, secrets, permissions, payments, data exposure, external code.
- `skills/docs-lookup/SKILL.md`: current docs, APIs, packages, external references.
- `skills/caveman/SKILL.md`: concise, direct communication.
- `skills/vibesec-skill/SKILL.md`: deeper security review when security is relevant.

## Approval Required

The agent must ask before:

- `git push`
- `git pull`
- deleting files, branches, repositories, data, or configs
- installing packages, apps, extensions, plugins, MCP servers, or skills
- running unknown scripts
- modifying secrets, API keys, tokens, credentials, or environment variables
- changing global config
- creating or changing GitHub repositories
- deploying, publishing, or changing billing/cloud/account settings

Approval must be explicit and action-specific.

## Default Working Loop

1. Understand the request.
2. Read relevant memory/rules/files.
3. State a short plan only when useful.
4. Make the smallest useful change.
5. Run available checks.
6. Report the result briefly.
7. Update memory files when the project state changes.

## New Project Bootstrap

When creating a new project from this template:

1. Create a GitHub repository using this template.
2. Clone/open the new repository in the chosen AI tool.
3. Ask the agent to read `START_HERE.md`.
4. Give the project idea.
5. Ask the agent to initialize:
   - `ai/project_overview.md`
   - `ai/current_state.md`
   - `ai/architecture.md`
   - `ai/decisions.md`
   - `ai/risk_register.md`
6. Start development only after the foundation files are updated.

## Scalability Pattern

Keep this template small.

Add new skills only when a repeated workflow appears at least 3 times or carries high risk.

Do not duplicate rules across tool-specific folders. Tool folders are adapters only. The source of truth stays in:

- `START_HERE.md`
- `AGENTS.md`
- `ai/`
- `.ruler/`
- `skills/`

## Safety Note

Third-party skills, MCP servers, shell scripts, browser extensions, and install commands are untrusted until reviewed.

Never auto-install them without user approval.
