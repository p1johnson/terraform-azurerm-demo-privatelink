variable "vnet_name" {
  type        = string
  description = "Name to use when creating the virtual network"
}

module "simple_network" {
  source = "app.terraform.io/pjdevelop/simple-network/azurerm"

  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  vnet_name           = var.vnet_name
}
