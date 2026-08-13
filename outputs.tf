output "resource_group_name" {
  description = "Resource Group Name"
  value       = azurerm_resource_group.lab.name
}

output "virtual_network_name" {
  description = "Virtual Network Name"
  value       = module.network.virtual_network_name
}

output "virtual_network_id" {
  description = "Resource ID of the deployed Azure Virtual Network"
  value       = module.network.virtual_network_id
}

output "app_subnet_id" {
  description = "Resource ID of the application subnet."
  value       = module.network.app_subnet_id
}

output "server_subnet_id" {
  description = "Resource ID of the server subnet."
  value       = module.network.server_subnet_id
}