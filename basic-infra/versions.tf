terraform {
  required_version = ">= 1.2.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 3.4"
    }
  }

  backend "s3" {
    bucket         	   = "tf-basics-tfstate"
    key              	   = "state/terraform.tfstate"
    region         	   = "eu-central-1"
    encrypt        	   = true
    dynamodb_table	   = "tfstate-lock"
  }
}
