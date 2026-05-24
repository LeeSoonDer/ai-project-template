#!/usr/bin/env bash
set -euo pipefail
printf "Checking template files...\n"
test -f AGENTS.md
test -f ai/current_state.md
test -f .ruler/ruler.toml
printf "OK\n"
