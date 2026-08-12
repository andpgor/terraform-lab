output "virtual_network_name" {
  value = azurerm_virtual_network.lab.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.lab.id
}

output "app_subnet_id" {
  value = azurerm_subnet.app.id
}

output "server_subnet_id" {
  value = azurerm_subnet.servers.id
}