#!/usr/bin/env bash
#
# Wraps shfmt to exclude certain directories.

#MISE description="Check shell script formatting"

set -euo pipefail

excludes=(
  "node_modules"
  ".git"
  "vendor"
  "build"
  "dist"
)

find_args=("." "-type" "f" "-name" "*.sh")
for exclude in "${excludes[@]}"; do
  find_args+=("-not" "-path" "*/${exclude}/*")
done

find "${find_args[@]}" -print0 | xargs -0 -r shfmt --diff --indent 2 --case-indent "$@"
