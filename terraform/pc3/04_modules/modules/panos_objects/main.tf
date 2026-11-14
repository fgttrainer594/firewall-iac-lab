resource "panos_address" "this" {
  for_each = var.addresses

  location    = local.location
  name        = each.key
  description = var.description
  ip_netmask  = each.value
}
