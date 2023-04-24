provider "azurerm" {
  features {}
}

resource "azurerm_storage_account" "storage" {
  name                            = var.name
  resource_group_name             = var.resource_group_name
  location                        = var.location
  account_tier                    = var.account_tier
  access_tier                     = var.access_tier
  account_replication_type        = var.account_replication_type
  account_kind                    = var.account_kind
  tags                            = var.tags
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "example" {
  name                  = var.default_container_name
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = var.default_container_access_type
}
