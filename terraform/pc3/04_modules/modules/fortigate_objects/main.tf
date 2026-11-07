resource "fortios_firewall_address" "this" {
  for_each = var.addresses

  name       = each.key
  type       = "ipmask"
  subnet     = "${split("/", each.value)[0]} 255.255.255.255"
  visibility = "enable"
  comment    = var.description
}
