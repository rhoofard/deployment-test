resource "azurerm_public_ip" "example" {
  name                = "PublicIp1"
  resource_group_name = "ryanh-workflow-test"
  location            = "East US"
  allocation_method   = "Static"

  tags = {
    Owner = "ryanh"
  }
}

