terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70.0"
    }
  }
}

provider "aws" {
  region                  = "${var.region}"
  shared_credentials_file = "${var.credential}"
  profile                 = "${var.profile}"
}
