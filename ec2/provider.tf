terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0" # Changed from 6.45.0 to a valid stable version
    }
  }
}

provider "aws" {
  region = "us-east-1" # Added region (change to your preferred lab region)
}