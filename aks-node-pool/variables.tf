variable "cluster_name"{
  description = "AKS cluster name"
}

variable "pool_name" {
  description = "AKS cluster node pool name"
}

variable "resource_group_name" {
  description = "AKS cluster resource group name"
}

variable "vm_size" {
  description = "AKS cluster node pool VM size"
}

variable "node_count" {
  description = "AKS cluster node pool VM count"
}

