output "resource_group_id" {
  value = azurerm_resource_group.main.id
}

output "virtual_network_id" {
  value = azurerm_virtual_network.main.id
}

output "app_subnet_id" {
  value = azurerm_subnet.app.id
}

output "db_subnet_id" {
  value = azurerm_subnet.db.id
}
