#!/usr/bin/env bash
set -euo pipefail

if [[ "$#" -ne 2 ]]; then
  echo "Usage: pc4_deploy_ansible.sh <deployment> <vault-password-file>"
  exit 2
fi

deployment="$1"
vault_file="$2"

if [[ ! -s "${vault_file}" ]]; then
  echo "Vault password file is missing or empty."
  exit 1
fi

case "${deployment}" in
  fgt1-pa6-ipsec)
    playbook="ansible/playbooks/pc2_fgt1_pa6_ipsec.yml"
    ;;
  fgt-hub-spoke)
    playbook="ansible/playbooks/pc2_05_configure_fortigate_vpn.yml"
    ;;
  *)
    echo "Deployment is not in the approved allowlist."
    exit 2
    ;;
esac

if [[ ! -f "${playbook}" ]]; then
  echo "Expected playbook not found: ${playbook}"
  exit 1
fi

echo "Running syntax check for ${playbook}"
ansible-playbook --syntax-check "${playbook}" --vault-id "lab@${vault_file}"

echo "Running ${playbook}"
ansible-playbook "${playbook}" --vault-id "lab@${vault_file}"
