data "azurerm_key_vault" "mtc-secrets-vault" {
  name                = "dev-env-kv-test"
  resource_group_name = "mtc-secrets"
}

data "azurerm_key_vault_secret" "mtc-client-ip" {
  name         = "client-ip"
  key_vault_id = data.azurerm_key_vault.mtc-secrets-vault.id
}