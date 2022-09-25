# VPC Resources
resource "aws_vpc" "main" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "lab_vpc"
    Manager = "${var.manager}"
  }
}

# Subnet Resources
resource "aws_subnet" "lab_ecs_subnet_01" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.10.20.0/26"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "lab_ecs_subnet_01"
    Manager = "${var.manager}"
  }
}

resource "aws_subnet" "lab_ecs_subnet_02" {
  vpc_id     = "${aws_vpc.main.id}"
  cidr_block = "10.10.20.64/26"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "lab_ecs_subnet_02"
    Manager = "${var.manager}"
  }
}
