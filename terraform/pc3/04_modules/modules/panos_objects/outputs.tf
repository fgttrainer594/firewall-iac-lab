output "names" {
  value = sort(keys(panos_address.this))
}
