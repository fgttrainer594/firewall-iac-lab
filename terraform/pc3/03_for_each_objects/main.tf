resource "fortios_firewall_address" "pc3_addresses" {
  for_each = var.fgt_addresses

  name       = each.key
  type       = "ipmask"
  subnet     = "${split("/", each.value)[0]} 255.255.255.255"
  visibility = "enable"
  comment    = local.owner_comment
}

resource "fortios_firewallservice_custom" "pc3_services" {
  for_each = var.tcp_services

  name          = each.key
  category      = "General"
  protocol      = "TCP/UDP/SCTP"
  tcp_portrange = each.value
  comment       = local.owner_comment
}

resource "panos_address" "pc3_addresses" {
  for_each = var.pan_addresses

  location    = local.pan_location
  name        = each.key
  description = local.owner_comment
  ip_netmask  = each.value
}

resource "panos_service" "pc3_services" {
  for_each = var.tcp_services

  location    = local.pan_location
  name        = each.key
  description = local.owner_comment

  protocol = {
    tcp = {
      destination_port = each.value
    }
  }
}
