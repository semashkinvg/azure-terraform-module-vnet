output "subnets" {
  value = local.subnets_output
}

output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}