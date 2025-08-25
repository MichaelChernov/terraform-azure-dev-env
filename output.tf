output "public_ip_address" {
  value = "${azurerm_linux_virtual_machine.mtc-vm.name}: ${azurerm_public_ip.mtc-ip.ip_address}"
}