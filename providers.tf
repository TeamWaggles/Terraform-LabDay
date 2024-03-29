terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.11.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
  //shared_credentials_file = "~/.aws/credentials"
  profile = "tf_user"
}
