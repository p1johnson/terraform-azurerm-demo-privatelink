resource "azurerm_lb" "load_balancer" {
  name                = var.load_balancer_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  sku                 = "Standard"
  sku_tier            = "Regional"

  frontend_ip_configuration {
    name      = var.frontend_ip_name
    subnet_id = azurerm_subnet.server_subnet.id
  }
}

resource "azurerm_lb_backend_address_pool" "backend_pool" {
  loadbalancer_id = azurerm_lb.load_balancer.id
  name            = var.backend_pool_name
}

resource "azurerm_network_interface_backend_address_pool_association" "webserver" {
  network_interface_id    = module.simple_webserver.network_interface_id
  ip_configuration_name   = "ipconfig"
  backend_address_pool_id = azurerm_lb_backend_address_pool.backend_pool.id
}

resource "azurerm_lb_probe" "load_balancer_probe" {
  name                = var.probe_name
  resource_group_name = azurerm_resource_group.resource_group.name
  loadbalancer_id     = azurerm_lb.load_balancer.id
  protocol            = "Http"
  port                = 80
  request_path        = "/"
}

resource "azurerm_lb_rule" "load_balancer_rule" {
  name                           = var.load_balancer_rule_name
  resource_group_name            = azurerm_resource_group.resource_group.name
  loadbalancer_id                = azurerm_lb.load_balancer.id
  frontend_ip_configuration_name = var.frontend_ip_name
  protocol                       = "Tcp"
  frontend_port                  = 80
  backend_port                   = 80
  probe_id                       = azurerm_lb_probe.load_balancer_probe.id
  backend_address_pool_ids       = [azurerm_lb_backend_address_pool.backend_pool.id]
}
