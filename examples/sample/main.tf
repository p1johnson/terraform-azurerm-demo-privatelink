terraform {
  required_version = "~> 0.14"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.49.0"
    }
  }
}

provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}

data "azurerm_subscription" "current" {
}

data "azurerm_client_config" "current" {}

resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

module "simple_network" {
  source  = "app.terraform.io/pjdevelop/simple-network/azurerm"
  version = ">= 0.0.5"

  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  vnet_name           = var.vnet_name
}
