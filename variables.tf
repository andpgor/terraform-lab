variable "location" {
  description = "Azure region"
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
  default     = "rg-terraform-lab-001"
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string
  default     = "vnet-lab"
}

variable "address_space" {
  description = "VNet address space"
  type        = list(string)

  default = [
    "10.10.0.0/16"
  ]
}

variable "app_subnet" {
  description = "Application subnet"
  type        = list(string)

  default = [
    "10.10.1.0/24"
  ]
}

variable "server_subnet" {
  description = "Server subnet"
  type        = list(string)

  default = [
    "10.10.2.0/24"
  ]
}