provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

module "network" {
  source              = "../../modules/network"
  vnet_name           = "vnet-dg"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = "rg-dg"
}

module "postgres" {
  source              = "../../modules/postgres"
  postgres_name       = "pg-dg"
  location            = var.location
  resource_group_name = var.resource_group_name
  db_admin_user       = var.db_admin_user
  db_admin_password   = var.db_admin_password
  sku_name            = "standard_b1ms"
  tier                = "Burstable"
  storage_mb          = 32768
  subnet_id           = module.network.db_subnet_id
}