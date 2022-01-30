location            = "uksouth"
resource_group_name = "rg-demo-privatelink-client"

virtual_network_name    = "vnet-demo-privatelink-client"
virtual_network_address = "10.0.0.0/16"
bastion_subnet_address  = "10.0.0.0/26"
server_subnet_name      = "snet-server"
server_subnet_address   = "10.0.1.0/24"

jumpserver_vm_name        = "vmjumpserver"
jumpserver_os_disk_name   = "mdk-jumpserver-os"
jumpserver_nic_name       = "nic-jumpserver"
jumpserver_admin_password = "kR7!x-kRbyCrM8y@"

bastion_name    = "bas-demo-privatelink-client"
bastion_ip_name = "pip-bas-demo-privatelink-client"

private_endpoint_name             = "pl-demo-privatelink-service"
#private_connection_resource_alias = "pl-demo-privatelink-service.1ebd2156-7e17-41b3-8cb9-5980482f645e.uksouth.azure.privatelinkservice"
