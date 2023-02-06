provider "azurerm" {
  features {}
}

data "azurerm_kubernetes_cluster" "default" {
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
}

resource "azurerm_kubernetes_cluster_node_pool" "default" {
  name                  = var.pool_name
  kubernetes_cluster_id = data.azurerm_kubernetes_cluster.default.id
  vm_size               = var.vm_size
  node_count            = var.node_count

  tags = {
    Created-by = "superhub.io"
  }
}
