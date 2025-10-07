module "resource_group" {
  source = "../child_module/resource_group"

  resource_group = var.resource_group
}

module "storage_account" {
  depends_on = [ module.resource_group ]
  source = "../child_module/storage_account"
  
  stg = var.stg
}

output "stg_id" {
  value = module.storage_account.mere_storage_ki_account_id["stg1"]
}

module "storage_account_container" {
  depends_on = [ module.storage_account ]
  source = "../Child_module/storage_account_container"
  
  container_name = "lalli2"
  stg_id = module.storage_account.mere_storage_ki_account_id["stg1"]
}

module "virtual_network" {
  source = "../Child_module/virtual_network"

  vnet_name                = "lalli_vnet"
  vnet_location            = "East US"
  resource_group_name      = "rg-module-01"
  address_spaces            = ["10.0.0.0/16"]
  subnet                   = var.subnet
}