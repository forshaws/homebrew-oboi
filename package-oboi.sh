#!/bin/bash
set -e

# Where the packaged archives will go
OUTDIR=~/oboi-releases
mkdir -p "$OUTDIR"

echo "Packaging OBOI binaries for Homebrew..."
echo

# Adjust these paths/names to match your actual binary filenames in the repo
# Format: source_path   output_name
BINARIES=(
  "../../oboi-releases/oboi-darwin-amd64   oboi-darwin-amd64"
  "../../oboi-releases/oboi-darwin-arm64   oboi-darwin-arm64"
  "../../oboi-releases/oboi-linux-amd64   oboi-linux-amd64"
)

cd "$(dirname "$0")"   # Go to repo root

for entry in "${BINARIES[@]}"; do
  SRC=$(echo "$entry" | awk '{print $1}')
  OUT=$(echo "$entry" | awk '{print $2}')
  
  if [[ ! -f "$SRC" ]]; then
    echo "❌ Missing: $SRC"
    continue
  fi
  
  cp "$SRC" oboi
  chmod +x oboi
  tar -czf "$OUTDIR/$OUT.tar.gz" oboi
  rm oboi
  
  echo "✅ Created $OUTDIR/$OUT.tar.gz"
done

echo
echo "SHA256 checksums:"
shasum -a 256 "$OUTDIR"/*.tar.gz
