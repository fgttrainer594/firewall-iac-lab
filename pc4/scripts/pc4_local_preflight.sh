#!/usr/bin/env bash
set -euo pipefail

echo "Git status:"
git status --short

echo
echo "Sensitive-file check:"
bash pc4/scripts/pc4_secret_guard.sh

echo
echo "Ansible syntax and lint:"
bash pc4/scripts/pc4_ci_ansible.sh

echo
echo "Terraform formatting and validation:"
bash pc4/scripts/pc4_ci_terraform.sh

echo
echo "Local preflight passed."
