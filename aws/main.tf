/**
 * # terraform with aws provider
 * Use the terraform with aws provider to interact. You must configure the provider with the proper credentials before you can use it.
 */
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.50.0"
    }
  }
}

provider "aws" {
  region                  = "ap-northeast-1"
  profile                 = "frank"
}
