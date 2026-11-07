#!/usr/bin/env bash
set -euo pipefail


echo "Running YAML validation..."

yamllint \
  -c pc4/yamllint.yml \
  ansible \
  pc4 \
  .github/workflows


echo "Running Ansible lint..."

ansible-lint \
  --exclude ansible/playbooks/pc1_enterprise_site_build.yml \
  --profile basic \
  --skip-list 'var-naming[no-role-prefix]' \
  ansible/playbooks \
  ansible/roles


echo "Running playbook syntax checks..."


mapfile -t playbooks < <(
  find ansible/playbooks \
    -maxdepth 1 \
    -type f \
    \( -name '*.yml' -o -name '*.yaml' \) \
    ! -name 'pc1_enterprise_site_build.yml' \
    | sort
)


if [[ "${#playbooks[@]}" -eq 0 ]]; then

  echo "No playbooks found."

  exit 1

fi


for playbook in "${playbooks[@]}"; do

  echo "Syntax check: ${playbook}"

  ansible-playbook \
    -i pc4/ci_inventory.yml \
    --syntax-check \
    "${playbook}"

done


echo "Ansible validation passed."
