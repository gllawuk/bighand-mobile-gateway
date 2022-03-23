# bighand go
resource "azurerm_windows_virtual_machine" "vmweb1" {
  name                = "vmweb1"
  location            = data.azurerm_resource_group.rg_web_1.location
  resource_group_name = data.azurerm_resource_group.rg_web_1.name
  size                = "Standard_B2s"
  admin_username      = var.windows_admin_username
  admin_password      = var.windows_admin_password
  network_interface_ids = [
    azurerm_network_interface.nic_vmweb1_1.id,
  ]

  boot_diagnostics {}

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "StandardSSD_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }

  identity {
    identity_ids = []
    type         = "SystemAssigned"
  }
}