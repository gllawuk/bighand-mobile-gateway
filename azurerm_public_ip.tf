resource "azurerm_public_ip" "pip" {
  name                = var.pip_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  allocation_method   = "Static"
}
