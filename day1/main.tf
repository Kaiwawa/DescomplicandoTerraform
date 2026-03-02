terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.87.0"
    }
  #   gcp = {
  #     source  = "hashicorp/google"
  #     version = ">=5.87.0"
  # }
  }
    backend "s3" {
    bucket = "descomplicando-terraform-rbaumann"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
provider "aws" { 
  alias = east
  region = "us-east-1"   
}

provider "aws" { 
  alias = west
  region = "us-west-1"
}

# provider "gcp" {
#   alias = google
#   region = "us-central1"
# }