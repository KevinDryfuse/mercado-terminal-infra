output "postgres_server_name" {
  description = "The name of the PostgreSQL flexible server"
  value       = azurerm_postgresql_flexible_server.postgres.name
}

output "postgres_fqdn" {
  description = "The FQDN of the PostgreSQL server"
  value       = azurerm_postgresql_flexible_server.postgres.fqdn
}
