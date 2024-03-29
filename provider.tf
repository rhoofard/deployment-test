terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.7.0"
    }
  }


  # Update this block with the location of your terraform state file
  backend "azurerm" {
    resource_group_name  = "ryanh-workflow-test"
    storage_account_name = "ryanhterraform"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
    use_oidc             = true
  }
}

provider "azurerm" {
  use_oidc                   = true
  skip_provider_registration = true
  features {}
}
