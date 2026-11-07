variable "fgt_addresses" {
  type = map(string)
  default = {
    TF-PC3-FGT-A = "198.51.100.111/32"
    TF-PC3-FGT-B = "198.51.100.112/32"
    TF-PC3-FGT-C = "198.51.100.113/32"
  }
}

variable "pan_addresses" {
  type = map(string)
  default = {
    TF-PC3-PA-A = "198.51.100.211/32"
    TF-PC3-PA-B = "198.51.100.212/32"
    TF-PC3-PA-C = "198.51.100.213/32"
  }
}

variable "tcp_services" {
  type = map(string)
  default = {
    TF-PC3-TCP-8443 = "8443"
    TF-PC3-TCP-9443 = "9443"
  }
}
