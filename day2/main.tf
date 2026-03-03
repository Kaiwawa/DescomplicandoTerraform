terraform {
    required_providers {
        aws = {
        source  = "hashicorp/aws"
        version = ">=5.0.0"
        }
    }

    backend "s3" {
        bucket = "descomplicando-terraform-rbaumann"
        # dynamodb_table = "terraform-state-lock"
        key    = "terraform.tfstate"
        region = "us-east-1"
    }
}

provider "aws" {
    region = "us-east-1"
}