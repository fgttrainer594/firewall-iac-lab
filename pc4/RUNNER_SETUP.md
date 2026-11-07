# PC4 self-hosted runner setup

Use a self-hosted runner because the live devices use private lab addresses that a GitHub-hosted runner cannot reach.

Recommended location:

```text
Linux12
192.168.100.10
```

Use a private repository for the live runner. Do not allow untrusted fork pull-request code to execute on this runner.

In GitHub:

```text
Repository
Settings
Actions
Runners
New self-hosted runner
```

Choose Linux x64 and follow the commands GitHub displays.

When configuring the runner, add this label:

```text
firewall-iac
```

The deployment workflow requests:

```yaml
runs-on:
  - self-hosted
  - linux
  - x64
  - firewall-iac
```

Create a GitHub Environment named:

```text
lab
```

Add this environment secret:

```text
ANSIBLE_VAULT_PASSWORD
```

The value is the password used to decrypt:

```text
ansible/inventory/lab/group_vars/all/vault.yml
```

If your GitHub repository plan supports environment reviewers for this repository type, add a reviewer and prevent self-review.

The workflow creates a temporary password file under `RUNNER_TEMP`, uses it for the deployment, and deletes it in an `always()` cleanup step.

Do not store the plaintext Vault password in the repository.
