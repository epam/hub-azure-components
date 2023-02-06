provider "azurerm" {
  features {}
}

data "azurerm_subnet" "aks" {
  name                 = "epmp-agst-westeurope-subnet"
  virtual_network_name = "epmp-agst-westeurope-vnet"
  resource_group_name  = var.resource_group_name
}

resource "azurerm_kubernetes_cluster" "default" {

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = "${var.name}-k8s"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_B2s"
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
