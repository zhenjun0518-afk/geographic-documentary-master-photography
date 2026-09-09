#!/usr/bin/env bash
set -euo pipefail

SKILL_DIR="${1:-$HOME/.codex/skills/geographic-documentary-master-photography}"

if [[ ! -d "$SKILL_DIR/.git" ]]; then
  echo "Error: $SKILL_DIR is not a Git clone." >&2
  echo "If you installed from ZIP/manual copy, download the latest repository and replace the directory after backing up local edits." >&2
  exit 1
fi

echo "Updating Geographic Documentary Master Photography..."
git -C "$SKILL_DIR" fetch origin main
git -C "$SKILL_DIR" pull --ff-only origin main

VERSION=$(grep -m1 '^version:' "$SKILL_DIR/SKILL.md" | sed -E 's/^version:[[:space:]]*"?([^" ]+)"?.*/\1/' || true)
echo "Update complete. Installed version: ${VERSION:-unknown}"
