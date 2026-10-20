terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.18"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

module "dynamodb" {
  source = "../.."

  table_name     = "example-basic-table"
  table_hash_key = "id"

  tags = {
    environment = "example"
    managed_by  = "terraform"
    owner       = "example"
  }
}

