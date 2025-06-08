resource "azurerm_postgresql_flexible_server" "postgres" {
  name                   = var.name
  location               = var.location
  resource_group_name    = var.resource_group_name
  administrator_login    = var.admin_user
  administrator_password = var.admin_password
  version                = "15"
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  delegated_subnet_id    = var.subnet_id
  private_dns_zone_id    = "Disabled"
}
