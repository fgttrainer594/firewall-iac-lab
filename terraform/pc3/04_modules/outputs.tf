output "fgt_module_names" {
  value = module.fortigate_objects.names
}

output "pan_module_names" {
  value = module.panos_objects.names
}
