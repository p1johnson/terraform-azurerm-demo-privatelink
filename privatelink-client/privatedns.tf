resource "azurerm_private_dns_zone" "demo_com" {
  name                = "demo.com"
  resource_group_name = azurerm_resource_group.resource_group.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "demo_com" {
  name                  = "${azurerm_virtual_network.virtual_network.name}-demo-com"
  resource_group_name   = azurerm_resource_group.resource_group.name
  private_dns_zone_name = azurerm_private_dns_zone.demo_com.name
  virtual_network_id    = azurerm_virtual_network.virtual_network.id
}

resource "azurerm_private_dns_a_record" "webserver_demo_com" {
  name                = "webserver"
  zone_name           = azurerm_private_dns_zone.demo_com.name
  resource_group_name = azurerm_resource_group.resource_group.name
  ttl                 = 300
  records             = [azurerm_private_endpoint.private_endpoint.private_service_connection[0].private_ip_address]
}