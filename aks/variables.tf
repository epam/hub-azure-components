variable "name" {
  description = "AKS cluster name"
}

variable "location" {
  description = "AKS location"
}

variable "resource_group_name" {
  description = "AKS cluster resource group name"
}

variable "kubernetes_version" {
  description = "AKS cluster version"
}

variable "machine_type" {
  description = "AKS cluster machine type"
}

variable "node_count" {
  description = "AKS cluster node count"
}
