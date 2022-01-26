location            = "uksouth"
resource_group_name = "rg-demo-privatelink-service"

virtual_network_name    = "vnet-demo-privatelink-service"
virtual_network_address = "10.0.0.0/16"
server_subnet_name      = "snet-server"
server_subnet_address   = "10.0.1.0/24"

webserver_name      = "vmwebserver"
webserver_disk_name = "mdk-webserver-os"
webserver_nic_name  = "nic-webserver-eth0"

load_balancer_name      = "lbi-demo-privatelink-service"
frontend_ip_name        = "demo-privatelink-service"
backend_pool_name       = "pool-webservers"
probe_name              = "probe-webservers"
load_balancer_rule_name = "rule-demo-privatelink-service"

private_link_service_name = "pl-demo-privatelink-service"
