terraform {
  required_version = ">= 1.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
}



module "network" {
  source = "./modules/network"

  resource_group_name = azurerm_resource_group.lab.name
  location            = azurerm_resource_group.lab.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space

  app_subnet    = var.app_subnet
  server_subnet = var.server_subnet
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "lab" {
  name     = var.resource_group_name
  location = var.location
}
