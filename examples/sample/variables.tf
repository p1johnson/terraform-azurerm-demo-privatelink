variable "location" {
  type        = string
  default     = "uksouth"
  description = "Azure region for creating the demo"
}

variable "resource_group_name" {
  type        = string
  default     = "rg-demo-001"
  description = "Azure resource group for creating the demo"
}

variable "vnet_name" {
  type        = string
  default     = "vnet-demo-001"
  description = "Name to use when creating the virtual network"
}
