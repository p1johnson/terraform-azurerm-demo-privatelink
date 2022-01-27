module "jumpserver" {
  source  = "app.terraform.io/pjdevelop/jumpserver/azurerm"
  version = "0.0.3"

  vm_name             = var.jumpserver_vm_name
  location            = var.location
  resource_group_name = azurerm_resource_group.resource_group.name
  vm_size             = var.jumpserver_vm_size
  os_disk_type        = var.jumpserver_os_disk_type
  os_disk_name        = var.jumpserver_os_disk_name
  nic_name            = var.jumpserver_nic_name
  subnet_id           = azurerm_subnet.server_subnet.id
  admin_password      = var.jumpserver_admin_password
  admin_username      = var.jumpserver_admin_username
}
