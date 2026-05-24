---
name: security-review
description: Review security risk, secrets, auth, permissions, dependencies, and untrusted code.
---

# Security Review

## Use When
- Task touches auth, secrets, third-party tools, APIs, payments, user data, browser extensions, MCP, or install scripts.

## Do Not Use When
- The task is unrelated to security and has no privileged action.

## Workflow
1. Read relevant project memory.
2. Inspect relevant files or docs.
3. Do the smallest useful action.
4. Report concise result and next step.
