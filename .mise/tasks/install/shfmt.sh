#!/usr/bin/env bash

#MISE description="Install shfmt if not found"
#MISE hide=true

get_version() {
  shfmt --version 2>/dev/null || echo "unknown"
}

get_location() {
  command -v shfmt 2>/dev/null
}

if get_location >/dev/null 2>&1; then
  echo "✓ shfmt $(get_version) is already installed at $(get_location)"
else
  echo "✗ shfmt is not installed. Installing shfmt via Homebrew..."
  if brew install shfmt; then
    echo "✓ shfmt successfully installed!"
  else
    echo "✗ shfmt installation failed"
    exit 1
  fi
fi
