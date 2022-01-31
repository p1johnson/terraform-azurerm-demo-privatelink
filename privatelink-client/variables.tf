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

variable "jumpserver_vm_name" {
  type = string
}

variable "jumpserver_vm_size" {
  type    = string
  default = "Standard_D2s_v3"
}

variable "jumpserver_os_disk_type" {
  type    = string
  default = "StandardSSD_LRS"
}

variable "jumpserver_os_disk_name" {
  type = string
}

variable "jumpserver_nic_name" {
  type = string
}

variable "jumpserver_admin_password" {
  type      = string
  sensitive = true
}

variable "jumpserver_admin_username" {
  type    = string
  default = "azureuser"
}

variable "bastion_name" {
  type = string
}

variable "bastion_ip_name" {
  type = string
}

variable "bastion_subnet_address" {
  type = string
}

variable "private_endpoint_name" {
  type = string
}

variable "private_service_is_manual_connection" {
  type    = bool
  default = true
}

variable "private_service_request_message" {
  type    = string
  default = "Please provide access."
}
