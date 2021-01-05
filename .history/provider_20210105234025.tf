provider "aws" {
  profile = "terraform"
  region  = "ap-southeast-1"
  features {}
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}   