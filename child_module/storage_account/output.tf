output "mere_storage_ki_account_id" {
  value = {
    for k, sa in azurerm_storage_account.stg : k => sa.id
  }
}