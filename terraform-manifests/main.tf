
#  Terraform Settings Block
terraform {
  #  Required Version Terraform
  required_version = ">= 0.13"
  #  Required Terraform Providers  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

# Terraform State storage to Azure Storage Container
  backend "azurerm" {
    #resource_group_name   = "terraform-storage-rg"
    #storage_account_name  = "hs"
    #container_name        = "tfstatefiles"
    #key                   = "terraform-custom-vnet.tfstate"
  }  
}



#  Terraform Provider Block for AzureRM
provider "azurerm" {
  features {

  }
}

#  Terraform Resource Block: Used In log analytics block
resource "random_pet" "aksrandom" {

}

