output "fgt_address_names" {
  value = sort(keys(fortios_firewall_address.pc3_addresses))
}

output "pan_address_names" {
  value = sort(keys(panos_address.pc3_addresses))
}

output "service_names" {
  value = sort(keys(var.tcp_services))
}
