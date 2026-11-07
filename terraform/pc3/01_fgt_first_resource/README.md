Run:

```bash
terraform fmt
terraform init
terraform validate
terraform plan -out=pc3.tfplan
terraform show pc3.tfplan
terraform apply pc3.tfplan
terraform state list
terraform state show fortios_firewall_address.pc3_first
```

Re-run `terraform plan` after apply. A clean result should report no infrastructure changes.
