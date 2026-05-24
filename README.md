# AI Project Template

A lightweight AI-first project starter for safe, consistent, high-signal software work with coding agents.

This template is:
- a project memory system
- an agent operating guide
- a reusable rules source
- a small skill starter
- a controlled automation framework

This template is not:
- a large skills marketplace
- a dependency-heavy framework
- a replacement for human approval
- a place to blindly vendor third-party skills

## Quickstart

1. Create a new repository from this template.
2. Fill in `ai/project_overview.md`, `ai/current_state.md`, `ai/architecture.md`, and `ai/coding_rules.md`.
3. Ask your AI agent to read `AGENTS.md` first.
4. Work in this loop: read context, plan, implement, test, review, update memory.
5. For installs, pushes, pulls, deletes, secrets, GitHub changes, or global config changes, require explicit user approval.

## AI Workflow

1. Read `AGENTS.md`.
2. Read `ai/project_overview.md` and `ai/current_state.md`.
3. Inspect relevant files before editing.
4. Make minimal changes.
5. Avoid hallucinated APIs, paths, packages, and commands.
6. Run available checks.
7. Review security and regression risk.
8. Update `ai/current_state.md`, `ai/decisions.md`, or `ai/risk_register.md` when meaningful.

## Source Of Truth

- `AGENTS.md`: root operating guide for all agents.
- `ai/`: long-term project memory.
- `.ruler/`: reusable rule source of truth.
- `skills/`: canonical project skill sources.
- `adapters/`: instructions for Cursor, Claude, Codex, Gemini, and other tools.

Tool-specific folders are adapters only. Do not let `.cursor`, `.claude`, `.codex`, or Gemini configs become the source of truth.

## Communication Default

Agent output should be short, clean, and practical. Use bullets and next steps. Avoid filler and long theory unless requested. Security warnings and approval prompts must stay clear, even when using terse modes.

## Approval Required

Agents must ask before:
- `git push` or `git pull`
- deleting files, branches, repos, or data
- installing packages, apps, extensions, MCP servers, plugins, or skills
- running unknown scripts
- changing global config
- modifying secrets, tokens, API keys, credentials, or environment variables
- creating or changing GitHub repositories
- publishing releases or deploying
- changing billing, cloud, or account settings

## Third-Party Skills Warning

Treat third-party skills, MCP servers, shell scripts, and install commands as untrusted supply-chain components until reviewed. Do not pipe remote scripts into a shell unless the user explicitly approves after reviewing the source.

## Included Third-Party Skills

- `skills/caveman`: sourced from `JuliusBrussee/caveman`, MIT license.
- `skills/vibesec-skill`: sourced from `BehiSecc/VibeSec-Skill`, Apache-2.0 license.

See `THIRD_PARTY_NOTICES.md`.

## Recommended External Resources

Core standards:
- AGENTS.md: https://github.com/openai/agents.md
- Ruler: https://github.com/intellectronica/ruler

Docs and context:
- Context7: https://github.com/upstash/context7

Evaluation:
- Promptfoo: https://github.com/promptfoo/promptfoo

Security:
- Semgrep: https://github.com/semgrep/semgrep
- OSV-Scanner: https://github.com/google/osv-scanner
- Snyk Agent Scan: https://github.com/snyk/agent-scan

Token discipline:
- RTK: https://github.com/rtk-ai/rtk
- Caveman: https://github.com/JuliusBrussee/caveman

Workflow inspiration:
- Superpowers: https://github.com/obra/superpowers
- gstack: https://github.com/garrytan/gstack
- baoyu-skills: https://github.com/JimLiu/baoyu-skills
