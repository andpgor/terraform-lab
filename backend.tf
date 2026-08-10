terraform {
  backend "azurerm" {
    resource_group_name  = "rg-terraform-state"
    storage_account_name = "sttstateandre001"
    container_name       = "tfstate"
    key                  = "terraform-lab.tfstate"
  }
}