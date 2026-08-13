variable "resource_group_name" {
  description = "Resource Group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "vnet_name" {
  description = "Virtual Network name"
  type        = string

  validation {
    condition     = length(var.vnet_name) > 3
    error_message = "The VNet name must contain more than 3 characters."
  }
}

variable "address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)

  validation {
    condition     = can(cidrhost(var.address_space[0], 0))
    error_message = "Address space must contain a valid CIDR range."
  }
}

variable "app_subnet" {
  description = "Application subnet"
  type        = list(string)

  validation {
    condition     = can(cidrhost(var.app_subnet[0], 0))
    error_message = "Application subnet must contain a valid CIDR range."
  }
}

variable "server_subnet" {
  description = "Server subnet"
  type        = list(string)

  validation {
    condition     = can(cidrhost(var.server_subnet[0], 0))
    error_message = "Server subnet must contain a valid CIDR range."
  }
}