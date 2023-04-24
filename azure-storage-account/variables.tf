variable "name" {
  type        = string
  description = "The name of the storage account"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group where the storage account will be created"
}

variable "location" {
  type        = string
  description = "The location where the storage account will be created"
}

variable "account_tier" {
  type        = string
  description = "The performance tier of the storage account"
  default     = "Standard"
}

variable "access_tier" {
  type        = string
  description = "The access tier of the storage account"
  default     = "Hot"
}

variable "account_replication_type" {
  type        = string
  description = "The type of replication to use for the storage account"
  default     = "LRS"
}

variable "account_kind" {
  type        = string
  description = "The kind of storage account to create"
  default     = "StorageV2"
}

variable "tags" {
  type        = map(string)
  description = "The tags to apply to the storage account"
  default     = {
    "Created-by" = "hubctl"
  }
}

variable "default_container_name" {
  type        = string
  description = "The default name of the storage container to create"
  default     = "default"
}

variable "default_container_access_type" {
  type        = string
  description = "The default access type for the storage container"
  default     = "private"
}
