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
