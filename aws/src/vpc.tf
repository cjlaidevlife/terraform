resource "aws_vpc" "main" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
    Type = "aws_vpc"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}

resource "aws_subnet" "main_subnet_01a" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.10.20.0/28"
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "main_subnet_01a"
    Type = "aws_subnet"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}

resource "aws_subnet" "main_subnet_02c" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.10.20.16/28"
  availability_zone = "ap-northeast-1c"

  tags = {
    Name = "main_subnet_02c"
    Type = "aws_subnet"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}
