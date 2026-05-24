$ErrorActionPreference = "Stop"
Write-Host "Checking template files..."
@("AGENTS.md", "ai/current_state.md", ".ruler/ruler.toml") | ForEach-Object {
  if (-not (Test-Path $_)) { throw "Missing $_" }
}
Write-Host "OK"
