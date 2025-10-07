variable "vnet_name" {}
variable "vnet_location" {}
variable "resource_group_name" {}
variable "address_spaces" {}
variable "subnet" {}

resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.resource_group_name
  address_space       = var.address_spaces

dynamic "subnet" {
  for_each = var.subnet
content {
    name           = subnet.key
    address_prefixes = subnet.value
  }
 }
}

