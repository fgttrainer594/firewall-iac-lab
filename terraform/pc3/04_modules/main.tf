module "fortigate_objects" {
  source = "./modules/fortigate_objects"

  addresses   = local.fgt_addresses
  description = local.description
}

module "panos_objects" {
  source = "./modules/panos_objects"

  addresses   = local.pan_addresses
  description = local.description
  vsys        = "vsys1"
}
