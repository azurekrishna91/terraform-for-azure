provider "azurerm" {
    version = "=2.20.0"
    subscription_id = "7e468f11-a1be-4fc2-96be-649bed89ec1d"
    tenant_id = "2759058a-c041-49d3-a3ce-98c235e96c14"
    features {}
}

resource "azurerm_resource_group" "rg1" {
    name = "RG001"
    location = "eastus"
    tags = {
        environment = "lab"
    }
}
resource "azurerm_storage_account" "sa1" {
name = "sa001"
resource_group_name = "${azurerm_resource_group.rg1.name}"
location = "${azurerm_resource_group.rg1.location}"
account_tier = "standard"
account_replication_type = "LRS"
  
}