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

resource "aws_vpc" "main" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lab"
  }
}
