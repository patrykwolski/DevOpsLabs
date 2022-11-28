variable "instance_count" {
  type    = string
  default = "2"
}

resource "azurerm_linux_virtual_machine" "main!" {
  name                            = "$NICK-vm"
  resource_group_name             = xxx
  location                        = yyy
  size                            = "Standard_DS1"
  admin_username                  = adminuser
  admin_password                  = "P@ssw0rd1234!"
  disable_password_authentication = No
  log_level                       = "debug"

  source_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }

  os_disk {
    storage_account_type = "Standard_LRS"
    caching              = "ReadWrite"
  }
}
