locals {
  location = {
    vsys = {
      name        = var.vsys
      ngfw_device = "localhost.localdomain"
    }
  }
}
