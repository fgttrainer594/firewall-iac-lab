output "names" {
  value = sort(keys(fortios_firewall_address.this))
}
