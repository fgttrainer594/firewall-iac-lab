#!/usr/bin/env bash
set -euo pipefail

TF_VERSION="1.17.0"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

curl -fsSLo "$TMP_DIR/terraform.zip" \
  "https://releases.hashicorp.com/terraform/${TF_VERSION}/terraform_${TF_VERSION}_linux_amd64.zip"

unzip -q "$TMP_DIR/terraform.zip" -d "$TMP_DIR"
sudo install -m 0755 "$TMP_DIR/terraform" /usr/local/bin/terraform
terraform version
