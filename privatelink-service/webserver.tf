module "simple_webserver" {
  source  = "app.terraform.io/pjdevelop/simple-webserver/azurerm"
  version = "0.0.4"

  server_name         = var.webserver_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  disk_name           = var.webserver_disk_name
  nic_name            = var.webserver_nic_name
  subnet_id           = azurerm_subnet.server_subnet.id
}
