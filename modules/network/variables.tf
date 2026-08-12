variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "app_subnet" {
  type = list(string)
}

variable "server_subnet" {
  type = list(string)
}
