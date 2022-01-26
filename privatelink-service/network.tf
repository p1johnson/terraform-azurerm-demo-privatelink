resource "azurerm_virtual_network" "virtual_network" {
  name                = var.virtual_network_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = [var.virtual_network_address]
}

resource "azurerm_subnet" "server_subnet" {
  name                                           = var.server_subnet_name
  resource_group_name                            = azurerm_resource_group.resource_group.name
  virtual_network_name                           = azurerm_virtual_network.virtual_network.name
  address_prefixes                               = [var.server_subnet_address]
  enforce_private_link_endpoint_network_policies = false
  enforce_private_link_service_network_policies  = true
}
