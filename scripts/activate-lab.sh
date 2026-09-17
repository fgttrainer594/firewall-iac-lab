#!/usr/bin/env bash

PROJECT_DIR="$HOME/firewall-iac-lab"

cd "$PROJECT_DIR" || exit 1

source "$PROJECT_DIR/.venv/bin/activate"

echo "Firewall IaC Lab environment activated."
echo

ansible --version | head -n 1
python --version

