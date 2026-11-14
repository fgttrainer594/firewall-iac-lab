# PC4 delivery rules

## Branch flow

```text
feature branch
  -> pull request
  -> automated checks
  -> review
  -> merge to main
  -> manual deployment
```

Do not deploy live firewall changes from a pull-request event.

## Ownership

Keep one primary automation owner per real resource.

```text
IAC-* resources
  -> existing Ansible ownership unless explicitly migrated

TF-PC3-* resources
  -> Terraform ownership
```

Do not let Ansible and Terraform continuously manage the same real object.

## Live runner

The self-hosted runner has network access to the lab and can receive environment secrets.
Treat it as privileged automation infrastructure.

## Deployment gate

Live deployment uses `workflow_dispatch` and the GitHub Environment `lab`.
Use environment review protection when available.

## Concurrency

Only one live firewall deployment should execute at a time.
The deployment workflow uses a shared concurrency group.

## Terraform

Do not automate `terraform apply` from GitHub until the selected Terraform working directory uses pipeline-safe persistent state.
The current PC3 exercises use local state for learning.

CI may safely run:

```text
terraform fmt -check
terraform init -backend=false
terraform validate
```

Live Terraform plan/apply needs an intentional state architecture first.
