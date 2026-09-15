
output "storage_account_ids" {
  description = "Resource IDs of the provisioned storage accounts."
  value = {
    for key, storage_account in azurerm_storage_account.storage_account :
    key => storage_account.id
  }
}

output "storage_account_names" {
  description = "Names of the provisioned storage accounts."
  value = {
    for key, storage_account in azurerm_storage_account.storage_account :
    key => storage_account.name
  }
}

output "storage_account_primary_blob_endpoints" {
  description = "Primary Blob endpoints of the provisioned storage accounts."
  value = {
    for key, storage_account in azurerm_storage_account.storage_account :
    key => storage_account.primary_blob_endpoint
  }
}
