resource "azurerm_network_interface" "nic_vmweb1_1" {
  name                = "nic-vmweb1-1"
  location            = data.azurerm_resource_group.rg_web_1.location
  resource_group_name = data.azurerm_resource_group.rg_web_1.name

  ip_configuration {
    name                          = "ipconfig1"
    subnet_id                     = data.azurerm_subnet.snet_web_uks_1.id
    primary                       = true
    private_ip_address            = "10.1.4.4"
    private_ip_address_allocation = "Static"
    private_ip_address_version    = "IPv4"
    public_ip_address_id          = azurerm_public_ip.pip_vmweb1_1.id
  }
}