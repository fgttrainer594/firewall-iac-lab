#!/usr/bin/env bash
set -euo pipefail

if [[ ! -d terraform ]]; then
  echo "terraform directory not found."
  exit 1
fi

echo "Checking Terraform formatting..."
terraform fmt -check -recursive terraform

search_root="terraform/pc3"
if [[ ! -d "${search_root}" ]]; then
  echo "${search_root} not found."
  exit 1
fi

mapfile -t tf_dirs < <(find "${search_root}" -type f -name '*.tf' -printf '%h\n' | sort -u)
if [[ "${#tf_dirs[@]}" -eq 0 ]]; then
  echo "No Terraform directories found."
  exit 1
fi

for dir in "${tf_dirs[@]}"; do
  echo "Initializing without backend: ${dir}"
  terraform -chdir="${dir}" init -backend=false -input=false -no-color
  echo "Validating: ${dir}"
  terraform -chdir="${dir}" validate -no-color
done

echo "Terraform validation passed."
