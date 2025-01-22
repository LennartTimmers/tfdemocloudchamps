resource "azurerm_resource_group" "rsg" {
  name     = "tfdemo-cloudchamps-${terraform.workspace}"
  location = "West Europe"
}

resource "azurerm_storage_account" "storageaccount" {
  name                     = "${var.name}${terraform.workspace}"
  resource_group_name      = azurerm_resource_group.rsg.name
  location                 = azurerm_resource_group.rsg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    managedBy = "tfdemo_cloudchamps"
  }
}

module "module_demo" {
  for_each = local.storageaccounttocreate # loop over the storageaccounts to create
  source   = "./module_demo" # point to the folder module_demo in this repository as source for this module.
  name = "${each.value}${terraform.workspace}"
  rsg_name = azurerm_resource_group.rsg.name
  rsg_location = azurerm_resource_group.rsg.location
  create_account = var.create_modules
}

# output storageaccountid {
#   value       = azurerm_storage_account.storageaccount.id
#   sensitive   = false
#   description = "Id of the storage account"
# }

# resource "azurerm_resource_group" "importexample" {
#   name     = "teaet"
#   location = "East US"
#   tags = {
#     managedBy = "tfdemo_cloudchamps"
#   }
# }

# data "azurerm_resource_group" "importexample" {
#   name     = "teaet"
# }

# output importedrsgid {
#   value       = data.azurerm_resource_group.importexample.id
#   sensitive   = false
#   description = "Id of the imported rsg"
# }



