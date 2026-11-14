resource "fortios_firewall_address" "pc3_first" {
  name       = "TF-PC3-FGT1-HOST"
  type       = "ipmask"
  subnet     = "198.51.100.101 255.255.255.255"
  visibility = "enable"
  comment    = "Managed by Terraform pc3"
}
