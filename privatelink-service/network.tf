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

resource "azurerm_nat_gateway" "nat_gateway" {
  name                = var.nat_gateway_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku_name            = "Standard"
}

resource "azurerm_public_ip" "nat_gateway_ip" {
  name                = var.nat_gateway_ip_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = "Standard"
  sku_tier            = "Regional"
  allocation_method   = "Static"
}

resource "azurerm_nat_gateway_public_ip_association" "nat_gateway" {
  nat_gateway_id       = azurerm_nat_gateway.nat_gateway.id
  public_ip_address_id = azurerm_public_ip.nat_gateway_ip.id
}

resource "azurerm_subnet_nat_gateway_association" "server_subnet" {
  subnet_id      = azurerm_subnet.server_subnet.id
  nat_gateway_id = azurerm_nat_gateway.nat_gateway.id
}
