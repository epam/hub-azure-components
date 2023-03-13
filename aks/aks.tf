provider "azurerm" {
  features {}
}

resource "azurerm_kubernetes_cluster" "default" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.name}-k8s"
  kubernetes_version  = var.kubernetes_version 

  default_node_pool {
    name            = "default"
    node_count      = var.node_count
    vm_size         = var.machine_type
    os_disk_size_gb = 30
  }
  role_based_access_control_enabled = true

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Created-by = "superhub.io"
  }

}
