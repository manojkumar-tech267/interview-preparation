terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.32.1"
    }
  }

 backend "s3" {
    bucket         = "terraform-remote-state-267"
    key            = "practice"
    region         = "us-east-1"
    encrypt        = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}