param(
  [string]$SkillDir = "$env:USERPROFILE/.codex/skills/geographic-documentary-master-photography"
)

$ErrorActionPreference = "Stop"

if (-not (Test-Path (Join-Path $SkillDir ".git"))) {
  Write-Error "${SkillDir} is not a Git clone. If installed from ZIP/manual copy, download the latest repository and replace the directory after backing up local edits."
  exit 1
}

Write-Host "Updating Geographic Documentary Master Photography..."
git -C $SkillDir fetch origin main
git -C $SkillDir pull --ff-only origin main

$versionLine = Select-String -Path (Join-Path $SkillDir "SKILL.md") -Pattern '^version:' | Select-Object -First 1
if ($versionLine) {
  $version = ($versionLine.Line -replace '^version:\s*["'']?([^"'' ]+)["'']?.*$', '$1')
  Write-Host "Update complete. Installed version: $version"
} else {
  Write-Host "Update complete. Installed version: unknown"
}
