terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.21.0"
    }
  }
}

# europe (london)
provider "aws" {
  region = "eu-west-2"
}

provider "azurerm" {
  features {}
}