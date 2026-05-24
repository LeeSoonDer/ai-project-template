---
name: privileged-automation
description: Use when installing tools, changing GitHub, editing global config, managing secrets, or running privileged scripts.
---

# Privileged Automation

## Use When
- Installing packages, apps, extensions, MCP servers, plugins, or skills.
- Running scripts with network, account, global config, or secret access.
- Creating or changing GitHub repositories.

## Do Not Use When
- Only reading files or running local non-mutating checks.

## Workflow
1. Explain what will change.
2. Show exact command/script/action.
3. State risk level and affected scope.
4. Ask explicit user approval.
5. Run only after approval.
6. Verify result.
7. Record meaningful changes in `ai/current_state.md` or `ai/decisions.md`.
