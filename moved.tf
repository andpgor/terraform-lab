moved {
  from = azurerm_virtual_network.lab
  to   = module.network.azurerm_virtual_network.lab
}

moved {
  from = azurerm_virtual_network.lab
  to   = module.network.azurerm_virtual_network.lab
}

moved {
  from = azurerm_subnet.app
  to   = module.network.azurerm_subnet.app
}

moved {
  from = azurerm_subnet.servers
  to   = module.network.azurerm_subnet.servers
}

moved {
  from = azurerm_network_security_group.app
  to   = module.network.azurerm_network_security_group.app
}

moved {
  from = azurerm_network_security_group.servers
  to   = module.network.azurerm_network_security_group.servers
}

moved {
  from = azurerm_route_table.app
  to   = module.network.azurerm_route_table.app
}

moved {
  from = azurerm_subnet_network_security_group_association.app
  to   = module.network.azurerm_subnet_network_security_group_association.app
}

moved {
  from = azurerm_subnet_network_security_group_association.servers
  to   = module.network.azurerm_subnet_network_security_group_association.servers
}

moved {
  from = azurerm_subnet_route_table_association.app
  to   = module.network.azurerm_subnet_route_table_association.app
}