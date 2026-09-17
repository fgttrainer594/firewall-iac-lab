```bash
#!/usr/bin/env bash

set -u

echo "============================================================"
echo " Firewall IaC Lab - Toolchain Check"
echo "============================================================"
echo

TOOLS=(
  git
  python3
  pip3
  curl
  jq
  ansible
  ansible-inventory
  ansible-galaxy
  ansible-lint
  yamllint
  pre-commit
  ansible-builder
  ansible-navigator
  terraform
  docker
  podman
)

for tool in "${TOOLS[@]}"; do

  if command -v "$tool" >/dev/null 2>&1; then

    printf "%-20s %-10s %s\n" \
      "$tool" \
      "FOUND" \
      "$(command -v "$tool")"

  else

    printf "%-20s %-10s\n" \
      "$tool" \
      "MISSING"

  fi

done

echo
echo "============================================================"
echo " Missing does not automatically mean ERROR."
echo " Some tools are installed in later playbooks."
echo "============================================================"
```
