Run:

```bash
terraform fmt
terraform init
terraform validate
terraform plan -out=pc3.tfplan
terraform apply pc3.tfplan
```

The resource write changes PAN-OS candidate configuration. Invoke the provider commit action separately:

```bash
terraform plan -invoke=action.panos_commit.pc3_commit
terraform apply -invoke=action.panos_commit.pc3_commit
```

Then run:

```bash
terraform plan
terraform state list
terraform state show panos_address.pc3_first
```
