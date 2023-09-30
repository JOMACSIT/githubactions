terraform {
  
  backend "s3" {
  bucket = "day5-state-bucket"
  key = "infra/githubactions.tfstate"
  region = "us-west-2"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.15.0"
    }
  }
}

provider "aws" {
    region = "us-west-2"
}
