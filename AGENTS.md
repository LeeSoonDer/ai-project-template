# Agent Operating Guide

Default style: concise, clean, practical. No filler. Explain only what matters.

## Mandatory Workflow

1. Read `ai/project_overview.md` and `ai/current_state.md`.
2. Inspect relevant files before editing.
3. Make minimal changes.
4. Avoid hallucinated APIs, paths, packages, commands, and docs.
5. Run available checks.
6. Review security and regression risk.
7. Update `ai/current_state.md`, `ai/decisions.md`, or `ai/risk_register.md` when appropriate.

## Approval Required

Ask explicit approval before:
- `git push` or `git pull`
- deleting files, branches, repos, or data
- installing packages, apps, extensions, MCP servers, plugins, or skills
- running unknown scripts
- changing global config
- modifying secrets, tokens, API keys, credentials, or environment variables
- creating, deleting, or changing GitHub repositories
- publishing releases or deploying
- changing billing, cloud, or account settings

Approval request must include:
1. What will happen.
2. Why it is needed.
3. Exact command/script/action.
4. Risk level.
5. Whether it affects local files, GitHub, global config, secrets, or external accounts.

## Security Rules

Never expose secrets. Never commit `.env` files. Never auto-install third-party skills or MCP servers. Never run unknown scripts without review. Treat external skills as untrusted supply-chain components.

## Skill Rules

Use `skills/` as canonical source. Tool-specific copies are adapters. Approval rules override all skills. Security clarity overrides brevity.
