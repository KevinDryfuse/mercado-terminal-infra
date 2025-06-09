resource "azurerm_resource_group" "main" {
  name     = "rg-terminal-${var.client_name}-${var.environment}"
  location = var.location

  tags = {
    Product     = "terminal"
    Client      = var.client_name
    Environment = var.environment
    Service     = "network"
  }
}
