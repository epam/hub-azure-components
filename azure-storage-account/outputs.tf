output "storage_account_primary_access_key" {
  sensitive = true
  value = azurerm_storage_account.storage.primary_access_key
}
