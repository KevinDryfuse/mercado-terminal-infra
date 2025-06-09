terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "network" {
  source      = "../../modules/network"
  client_name = var.client_name
  location    = var.location
  environment = var.environment
}
