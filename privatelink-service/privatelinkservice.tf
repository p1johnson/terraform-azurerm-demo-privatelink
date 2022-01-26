resource "azurerm_private_link_service" "private_link_service" {
  name                = var.private_link_service_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name

  auto_approval_subscription_ids              = var.private_link_approved_subscription_ids
  visibility_subscription_ids                 = var.private_link_visibility_subscription_ids
  load_balancer_frontend_ip_configuration_ids = [azurerm_lb.load_balancer.frontend_ip_configuration.0.id]

  nat_ip_configuration {
    name      = "primary"
    subnet_id = azurerm_subnet.server_subnet.id
    primary   = true

  }
}
