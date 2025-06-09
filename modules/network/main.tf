# Resource Group
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

# VNet
resource "azurerm_virtual_network" "main" {
  name                = "vnet-terminal-${var.client_name}-${var.environment}"
  location            = azurerm_resource_group.main.location
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Product     = "terminal"
    Client      = var.client_name
    Environment = var.environment
    Service     = "network"
  }
}

# App Subnet
resource "azurerm_subnet" "app" {
  name                 = "snet-app-${var.client_name}-${var.environment}"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.1.0/24"]
}

# DB Subnet
resource "azurerm_subnet" "db" {
  name                 = "snet-db-${var.client_name}-${var.environment}"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.main.name
  address_prefixes     = ["10.0.2.0/24"]
}
