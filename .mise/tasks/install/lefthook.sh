#!/usr/bin/env bash

#MISE description="Install Lefthook if not found"
#MISE hide=true

get_lefthook_version() {
  lefthook version 2>/dev/null || echo "unknown"
}

get_lefthook_location() {
  command -v lefthook
}

if get_lefthook_location >/dev/null 2>&1; then
  echo "✓ Lefthook $(get_lefthook_version) is already installed at $(get_lefthook_location)"
else
  echo "✗ Lefthook is not installed. Installing Lefthook via Homebrew..."
  if brew install lefthook; then
    echo "✓ Lefthook successfully installed!"
  else
    echo "✗ Lefthook installation failed"
    exit 1
  fi
fi
