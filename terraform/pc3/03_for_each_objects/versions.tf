terraform {
  required_version = ">= 1.14.0"

  required_providers {
    fortios = {
      source  = "fortinetdev/fortios"
      version = "~> 1.26"
    }
    panos = {
      source  = "PaloAltoNetworks/panos"
      version = "~> 2.0"
    }
  }
}
