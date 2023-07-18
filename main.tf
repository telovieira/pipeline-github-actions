terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"

  backend "s3" {
    bucket = "bucket-telo-2023"
    key    = "aws-myvm/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region     = var.region_name

  default_tags {
    tags = {
      owner      = "telo"
      managed-by = "terraform"
    }
  }
}

data "terraform_remote_state" "myvpc" {
  backend = "s3"
  config = {
    bucket = "bucket-telo-2023"
    key    = "aws-myvpc/terraform.tfstate"
    region = var.region_name
  }
}
