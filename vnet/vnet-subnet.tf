

resource "azurerm_subnet" "vnet-subnet" {
  for_each             = var.vnet.subnets
  name                 = "${var.global_prefix}-${var.location}-${var.environment_code}-${var.purpose}"
  resource_group_name  = var.rg_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = each.value.cidrs
}
