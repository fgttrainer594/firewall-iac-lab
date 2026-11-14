resource "panos_address" "pc3_first" {
  location    = local.pan_location
  name        = "TF-PC3-PA6-HOST"
  description = "Managed by Terraform pc3"
  ip_netmask  = "198.51.100.201/32"
}
