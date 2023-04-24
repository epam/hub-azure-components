output "storage_account_primary_access_key" {
  value = nonsensitive(azurerm_storage_account.storage.primary_access_key)
}
