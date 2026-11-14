locals {
  description = "Managed by Terraform pc3 module"

  fgt_addresses = {
    TF-PC3-MOD-FGT-1 = "203.0.113.11/32"
    TF-PC3-MOD-FGT-2 = "203.0.113.12/32"
  }

  pan_addresses = {
    TF-PC3-MOD-PA-1 = "203.0.113.21/32"
    TF-PC3-MOD-PA-2 = "203.0.113.22/32"
  }
}
