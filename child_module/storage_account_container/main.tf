variable "container_name" {}
variable "stg_id" {}

resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_id    = var.stg_id
  container_access_type = "private"
}