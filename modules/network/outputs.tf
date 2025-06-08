output "vnet_id" {
  description = "The ID of the Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "apps_subnet_id" {
  description = "The ID of the application subnet"
  value       = azurerm_subnet.apps_subnet.id
}

output "db_subnet_id" {
  description = "The ID of the database subnet"
  value       = azurerm_subnet.db_subnet.id
}
