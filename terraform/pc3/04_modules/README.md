This exercise introduces child modules.

The root configuration decides which values to pass. The child module owns the repeated implementation logic.

Run:

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform apply -invoke=action.panos_commit.pc3_commit
```
