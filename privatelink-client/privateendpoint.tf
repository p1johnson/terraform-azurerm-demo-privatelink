resource "azurerm_private_endpoint" "private_endpoint" {
  name                = var.private_endpoint_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  subnet_id           = azurerm_subnet.server_subnet.id

  private_service_connection {
    name                              = var.private_endpoint_name
    private_connection_resource_alias = data.tfe_outputs.privatelink_service.private_link_service_alias
    is_manual_connection              = var.private_service_is_manual_connection
    request_message                   = var.private_service_is_manual_connection ? var.private_service_request_message : null
  }
}
