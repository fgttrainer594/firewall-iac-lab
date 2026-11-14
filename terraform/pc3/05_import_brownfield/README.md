Before running `terraform plan`, manually create these two objects in the firewalls with values matching `main.tf`:

```text
FGT1: TF-PC3-IMPORT-FGT = 203.0.113.101/32
PA6:  TF-PC3-IMPORT-PA  = 203.0.113.201/32
```

Initialize:

```bash
terraform init
```

Import FortiGate:

```bash
terraform import fortios_firewall_address.existing_fgt TF-PC3-IMPORT-FGT
```

Build the PAN-OS v2 import identifier and import:

```bash
PAN_IMPORT_ID=$(printf '%s' '{"location":{"vsys":{"name":"vsys1","ngfw_device":"localhost.localdomain"}},"name":"TF-PC3-IMPORT-PA"}' | base64 -w0)
terraform import panos_address.existing_pan "$PAN_IMPORT_ID"
```

Then inspect:

```bash
terraform state list
terraform state show fortios_firewall_address.existing_fgt
terraform state show panos_address.existing_pan
terraform plan
```

Do not apply before import. Terraform would otherwise attempt to create objects that already exist.
