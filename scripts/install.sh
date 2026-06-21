#!/bin/bash
# Myanmar Expert Skill Installer
# Usage: bash install.sh [CODEX_HOME_PATH]
# Default: ~/.codex/skills/myanmar-expert/

CODEX_HOME="${1:-$HOME/.codex}"
SKILL_DEST="$CODEX_HOME/skills/myanmar-expert"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_SRC="$(dirname "$SCRIPT_DIR")"

echo "Installing Myanmar Expert skill to $SKILL_DEST..."
mkdir -p "$SKILL_DEST"
cp -r "$SKILL_SRC"/* "$SKILL_DEST/"
echo "✅ Installed! Restart Codex CLI or run: codex --reload-skills"
