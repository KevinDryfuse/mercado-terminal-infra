provider "azurerm" {
  features {}
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
  name                = "pg-dg"
  location            = "eastus"
  resource_group_name = "rg-dg"
  admin_user          = "mcxeng_pgadmin"
  admin_password      = var.db_admin_password
  sku_name            = "Standard_B1ms"
  storage_mb          = 32768
  subnet_id           = module.network.db_subnet_id
}
