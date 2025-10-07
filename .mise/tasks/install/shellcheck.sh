#!/usr/bin/env bash

#MISE description="Install shellcheck if not found"
#MISE hide=true

get_version() {
  if shellcheck --version >/dev/null 2>&1; then
    version=$(shellcheck --version | awk '/version:/ {print $2}')
    echo ${version}
  else
    echo "unknown"
  fi
}

get_location() {
  command -v shellcheck 2>/dev/null
}

if get_location >/dev/null 2>&1; then
  echo "✓ shellcheck $(get_version) is already installed at $(get_location)"
else
  echo "✗ shellcheck is not installed. Installing shellcheck via Homebrew..."
  if brew install shellcheck; then
    echo "✓ shellcheck successfully installed!"
  else
    echo "✗ shellcheck installation failed"
    exit 1
  fi
fi
