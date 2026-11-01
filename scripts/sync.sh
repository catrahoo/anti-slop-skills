#!/usr/bin/env bash
# Menarik versi terbaru 4 plugin yang disalin (vendored) dari repo aslinya.
# 3 plugin lain (taste-skill, antislop, humanizer) langsung diambil dari GitHub sumbernya.
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

clone() { git clone -q --depth 1 "https://github.com/$1" "$TMP/$2"; }

clone pbakaus/impeccable impeccable
clone conorbronsdon/avoid-ai-writing avoid
clone hardikpandya/stop-slop stopslop
clone petergyang/no-ai-slop noslop

# impeccable
rm -rf "$ROOT/plugins/impeccable"
cp -r "$TMP/impeccable/plugin" "$ROOT/plugins/impeccable"
cp "$TMP/impeccable/LICENSE" "$ROOT/plugins/impeccable/"

# avoid-ai-writing
rm -rf "$ROOT/plugins/avoid-ai-writing"
cp -r "$TMP/avoid/plugins/avoid-ai-writing" "$ROOT/plugins/avoid-ai-writing"
cp "$TMP/avoid/LICENSE" "$ROOT/plugins/avoid-ai-writing/"

# stop-slop (repo asli tidak punya plugin.json, jadi plugin.json di sini dipertahankan)
rm -rf "$ROOT/plugins/stop-slop/skills"
mkdir -p "$ROOT/plugins/stop-slop/skills/stop-slop"
cp -r "$TMP/stopslop/SKILL.md" "$TMP/stopslop/references" "$ROOT/plugins/stop-slop/skills/stop-slop/"
cp "$TMP/stopslop/LICENSE" "$ROOT/plugins/stop-slop/"

# no-ai-slop
rm -rf "$ROOT/plugins/no-ai-slop/skills"
cp -r "$TMP/noslop/skills" "$ROOT/plugins/no-ai-slop/"
cp "$TMP/noslop/LICENSE" "$ROOT/plugins/no-ai-slop/"

echo "✓ Sync selesai"
