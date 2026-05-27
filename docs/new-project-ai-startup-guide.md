# New Project AI Startup Guide

This guide covers everything to prepare before formally developing a new project with an AI agent.

Goal: start every new idea with clean project memory, clear rules, relevant skills, and safe approval boundaries.

## 0. Choose The Workflow

Use one of these paths.

### Option A: GitHub Template + Local AI Agent

Best for Cursor, Codex, Claude Code, Gemini CLI, local browser testing, apps, extensions, and projects that need terminal access.

```text
GitHub template -> new repo -> clone locally -> open in AI coding tool -> initialize memory -> develop
```

### Option B: GitHub Template + Cloud AI Agent

Best for GitHub Copilot coding agent, GitHub PR workflow, docs, small features, and remote-only work.

```text
GitHub template -> new repo -> create issue -> assign AI agent -> review PR -> merge
```

### Option C: GitHub Template + Codespaces

Best when you do not want a local clone but still need terminal, dependencies, builds, and tests.

```text
GitHub template -> new repo -> open Codespaces -> initialize memory -> develop
```

## 1. Create The New Repository

1. Open the template repo:

```text
https://github.com/LeeSoonDer/ai-project-template
```

2. Click:

```text
Use this template -> Create a new repository
```

3. Name the new repo with the actual project name.

Examples:

```text
social-extractor
ai-research-dashboard
creator-content-engine
personal-finance-agent
```

4. Choose visibility.

Recommended default:

```text
Private while exploring.
Public only when ready to share.
```

## 2. Clone Locally

Skip this section if using GitHub Copilot cloud agent or Codespaces only.

```powershell
git clone https://github.com/YOUR_USERNAME/YOUR_NEW_REPO.git
cd YOUR_NEW_REPO
```

Open the folder in your AI coding tool.

Examples:

```text
Cursor
Codex
Claude Code
Gemini CLI
VS Code with Copilot
```

## 3. Do Not Start Coding Yet

Before implementation, initialize project memory.

The first AI task is not code. The first task is making the project understandable.

Required files to initialize:

```text
ai/project_overview.md
ai/current_state.md
ai/architecture.md
ai/coding_rules.md
ai/decisions.md
ai/risk_register.md
```

## 4. First Prompt To AI Agent

Copy this prompt into your AI agent.

```text
Read AGENTS.md first.

Then read:
- ai/current_state.md
- ai/project_overview.md
- ai/architecture.md
- ai/coding_rules.md
- ai/decisions.md
- ai/risk_register.md
- .ruler/rules/communication-style.md
- .ruler/rules/approval-required-actions.md
- .ruler/rules/engineering-principles.md
- .ruler/rules/anti-hallucination.md
- .ruler/rules/minimal-change.md
- .ruler/rules/security.md
- .ruler/rules/testing.md
- .ruler/rules/token-discipline.md
- .ruler/rules/privileged-automation.md

Then scan the skills/ folder and summarize available skills by name and purpose.
Do not fully load heavy skills unless the task matches.

Use concise output by default.
Use relevant skills only when the task matches.
Do not load vibesec-skill unless security, secrets, browser extension permissions, auth, API keys, third-party code, installs, or MCP are involved.

My project idea is:
[PASTE YOUR IDEA HERE]

First help me initialize the project memory.
Ask only important missing questions.
Do not write application code yet.
```

## 5. What The AI Should Return

The AI should return a short foundation summary:

```text
Product:
Audience:
Core problem:
MVP goal:
Likely architecture:
Open questions:
Recommended next step:
```

If the AI starts writing code immediately, stop it and say:

```text
Stop. Initialize project memory first. Do not write app code yet.
```

## 6. Answer Only High-Impact Questions

Good questions:

```text
Who is the target user?
What is the MVP success condition?
Is this local-first or cloud-first?
Does it need auth, payments, database, browser extension, mobile, or AI API?
Is privacy/security high risk?
```

Bad questions:

```text
What color should the button be?
What should every file be named?
Should I use tabs or spaces?
```

The AI should infer small details from the stack and project conventions later.

## 7. Let AI Fill Project Memory

After questions are answered, ask:

```text
Update the ai/ project memory files based on my answers.
Keep the content concise, practical, and decision-oriented.
Do not write application code yet.
```

Expected updates:

```text
ai/project_overview.md -> product, problem, audience, MVP
ai/current_state.md -> completed, in progress, next priorities, blockers
ai/architecture.md -> system shape, data flow, boundaries
ai/coding_rules.md -> stack-specific code rules
ai/decisions.md -> major decisions with reason/tradeoff/future implications
ai/risk_register.md -> security, privacy, cost, technical, and product risks
```

## 8. Review The Memory Before Coding

Read the updated files quickly.

Check:

```text
Is the product idea correct?
Is the MVP small enough?
Is the architecture realistic?
Did the AI invent requirements?
Are the risks honest?
Are decisions recorded?
```

If wrong, fix memory before coding.

## 9. Commit The Foundation

Local workflow:

```powershell
git status
git add ai AGENTS.md .ruler skills adapters automation security evals docs scripts README.md
git commit -m "Initialize AI project memory"
```

Before `git push`, the AI must ask for approval.

Push only after approval:

```powershell
git push
```

Cloud agent workflow:

```text
Review the AI-generated PR.
Ask for revisions if memory is wrong.
Merge only when the foundation is correct.
```

## 10. Ask For MVP Plan

After project memory is correct, ask:

```text
Based on the ai/ memory files, create a Phase 1 MVP plan.
Keep it small.
Prioritize correctness and fast validation.
Do not over-engineer.
List implementation steps, checks, and acceptance criteria.
Do not implement yet.
```

## 11. Start Development

When the plan is approved, ask:

```text
Implement Phase 1.
Follow AGENTS.md and the ai/ memory files.
Inspect relevant files before editing.
Make minimal changes.
Run available checks.
Update ai/current_state.md after completion.
Ask before install, push, pull, delete, secrets, global config, or GitHub changes.
```

## 12. Skill Usage Rules

The AI should not load every skill fully every time.

Default behavior:

```text
Read core rules first.
Scan skill names and descriptions.
Load only matching skills.
```

Common mappings:

| Situation | Skill |
|---|---|
| Need concise output | `caveman` |
| Planning project or feature | `planning` |
| Updating project memory | `project-memory` |
| Debugging errors | `debugging` |
| Reviewing code | `code-review` |
| Security, secrets, auth, extension permissions | `security-review` + `vibesec-skill` |
| Installing tools, changing GitHub, global config, secrets | `privileged-automation` |
| Current docs, APIs, pricing, limits | `docs-lookup` |

Heavy skills such as `vibesec-skill` should load only when relevant.

## 13. Approval Rules

The AI must ask before:

```text
git push
git pull
deleting files, branches, repos, or data
installing packages, apps, extensions, MCP servers, plugins, or skills
running unknown scripts
changing global config
modifying secrets, tokens, API keys, credentials, or environment variables
creating or changing GitHub repositories
publishing releases or deploying
changing billing, cloud, or account settings
```

Approval request should include:

```text
What will happen
Why it is needed
Exact command/action
Risk level
Affected scope
How to verify success
Rollback/undo notes when possible
```

## 14. Clean Startup Checklist

Before coding starts, confirm:

```text
[ ] New repo created from ai-project-template
[ ] Project idea written clearly
[ ] AI read AGENTS.md
[ ] AI read ai/ memory files
[ ] AI read .ruler core rules
[ ] AI scanned skills/ but did not load everything blindly
[ ] Project memory initialized
[ ] Architecture direction recorded
[ ] MVP scope small enough
[ ] Risks recorded
[ ] Foundation committed
[ ] Push approved by user
[ ] Phase 1 plan created
```

## 15. Short Version

```text
Template repo
-> new repo
-> clone or Codespaces or Copilot cloud
-> AI reads AGENTS.md + ai/ + .ruler
-> AI scans skills
-> user gives idea
-> AI asks key questions
-> AI updates ai/ memory
-> commit foundation
-> AI plans MVP
-> user approves
-> AI implements
-> tests/review
-> update memory
-> user approves push
```
