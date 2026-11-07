#!/usr/bin/env bash
set -euo pipefail

forbidden_tracked_files_regex='(^|/)(terraform\.tfstate($|\.)|pc3_env\.sh$|pc4_env\.sh$|vault-pass(word)?(\.txt)?$|.*\.tfplan$)'
tracked_files="$(git ls-files)"

if printf '%s\n' "${tracked_files}" | grep -E "${forbidden_tracked_files_regex}" >/dev/null; then
  echo "Sensitive or generated files are tracked:"
  printf '%s\n' "${tracked_files}" | grep -E "${forbidden_tracked_files_regex}"
  exit 1
fi

if git ls-files | grep -E '(^|/)\.terraform/' >/dev/null; then
  echo ".terraform content must not be tracked."
  exit 1
fi

echo "Tracked-file secret hygiene check passed."
