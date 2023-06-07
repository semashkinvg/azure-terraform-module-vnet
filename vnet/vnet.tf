
resource "azurerm_virtual_network" "vnet" {
  name                = "${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}"
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = var.vnet.cidrs

  tags = merge({
    environment = var.environment_code
  }, var.tags)
}
