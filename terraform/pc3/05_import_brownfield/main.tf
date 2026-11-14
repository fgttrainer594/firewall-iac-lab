resource "fortios_firewall_address" "existing_fgt" {
  name       = "TF-PC3-IMPORT-FGT"
  type       = "ipmask"
  subnet     = "203.0.113.101 255.255.255.255"
  visibility = "enable"
  comment    = "Imported into Terraform pc3"
}

resource "panos_address" "existing_pan" {
  location    = local.pan_location
  name        = "TF-PC3-IMPORT-PA"
  description = "Imported into Terraform pc3"
  ip_netmask  = "203.0.113.201/32"
}
