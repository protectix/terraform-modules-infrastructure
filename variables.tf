
variable "storage_accounts" {
  description = "Storage accounts to provision, keyed by a unique logical name."
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
  default = {}
}

variable "tags" {
  description = "Tags applied to provisioned resources."
  type        = map(string)
  default     = {}
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group."
  type        = string
}

variable "location" {
  description = "Azure region for the virtual network."
  type        = string
}

variable "address_space" {
  description = "Address spaces for the virtual network."
  type        = list(string)
}

variable "dns_servers" {
  description = "Custom DNS servers for the virtual network."
  type        = list(string)
  default     = []
}
