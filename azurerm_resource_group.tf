data "azurerm_resource_group" "vnet_rg" {
  name = var.vnet_rg_name
}

data "azurerm_resource_group" "rg" {
  name = var.rg_name
}
