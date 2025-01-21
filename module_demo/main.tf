resource "azurerm_storage_account" "storageaccount" {
  count = var.create_account ? 1 : 0
  name                     = var.name
  resource_group_name      = var.rsg_name
  location                 = var.rsg_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    managedBy = "tfdemo_cloudchamps"
  }
}

