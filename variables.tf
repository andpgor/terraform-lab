variable "location" {
  description = "Azure region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)
}

variable "app_subnet" {
  description = "Application subnet"
  type        = list(string)
}

variable "server_subnet" {
  description = "Server subnet"
  type        = list(string)
}