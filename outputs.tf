output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.lab.name
}

output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.lab.name
}

output "virtual_network_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.lab.id
}

output "app_subnet_id" {
  description = "Application Subnet ID"
  value       = azurerm_subnet.app.id
}

output "server_subnet_id" {
  description = "Server Subnet ID"
  value       = azurerm_subnet.servers.id
}