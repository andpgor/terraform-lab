locals {
  module_test = "network-module"
}

resource "azurerm_virtual_network" "lab" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
}

resource "azurerm_subnet" "app" {
  name                 = "subnet-app"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = var.app_subnet
}

resource "azurerm_subnet" "servers" {
  name                 = "subnet-servers"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.lab.name
  address_prefixes     = var.server_subnet
}

resource "azurerm_subnet_network_security_group_association" "app" {
  subnet_id                 = azurerm_subnet.app.id
  network_security_group_id = azurerm_network_security_group.app.id
}

resource "azurerm_subnet_network_security_group_association" "servers" {
  subnet_id                 = azurerm_subnet.servers.id
  network_security_group_id = azurerm_network_security_group.servers.id
}

resource "azurerm_subnet_route_table_association" "app" {
  subnet_id      = azurerm_subnet.app.id
  route_table_id = azurerm_route_table.app.id
}

resource "azurerm_network_security_group" "app" {
  name                = "nsg-app"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-RDP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_security_group" "servers" {
  name                = "nsg-servers"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "Allow-HTTPS"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "443"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_route_table" "app" {
  name                = "rt-app"
  location            = var.location
  resource_group_name = var.resource_group_name

  route {
    name                   = "To-HQ"
    address_prefix         = "10.20.0.0/16"
    next_hop_type          = "VirtualAppliance"
    next_hop_in_ip_address = "10.10.1.254"
  }
}