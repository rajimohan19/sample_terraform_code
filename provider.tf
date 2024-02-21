terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.22.0"
    }
  }
  backend "s3" {
    bucket         = "dme-statefile-bucket"
    region         = "ap-south-1"
    key            = "dev/state/terraform.tfstate"
    dynamodb_table = "dme-statefile-table"
  }
}

provider "aws" {
  region  = "ap-south-1"
}
