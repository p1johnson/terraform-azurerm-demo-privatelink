variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "virtual_network_address" {
  type = string
}

variable "server_subnet_name" {
  type = string
}

variable "server_subnet_address" {
  type = string
}

variable "webserver_name" {
  type = string
}

variable "webserver_disk_name" {
  type = string
}

variable "webserver_nic_name" {
  type = string
}

variable "load_balancer_name" {
  type = string
}

variable "frontend_ip_name" {
  type = string
}

variable "backend_pool_name" {
  type = string
}

variable "probe_name" {
  type = string
}

variable "load_balancer_rule_name" {
  type = string
}

variable "private_link_service_name" {
  type = string
}

variable "private_link_approved_subscription_ids" {
  type    = list(string)
  default = []
}

variable "private_link_visibility_subscription_ids" {
  type    = list(string)
  default = []
}

variable "nat_gateway_name" {
  type = string
}

variable "nat_gateway_ip_name" {
  type = string
}
