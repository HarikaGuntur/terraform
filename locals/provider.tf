terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.45.0" # Changed from 6.45.0 to a valid stable version
    }
}

 backend "s3" {
    bucket         = "remote-state-hars"
    key            = "locals-demo-state.tfstate"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile   = true # Enables native S3 locking
 }
}

provider "aws" {
  region = "us-east-1" # Added region (change to your preferred lab region)
}