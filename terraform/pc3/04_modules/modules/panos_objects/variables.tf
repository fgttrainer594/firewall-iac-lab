variable "addresses" {
  type = map(string)
}

variable "description" {
  type = string
}

variable "vsys" {
  type    = string
  default = "vsys1"
}
