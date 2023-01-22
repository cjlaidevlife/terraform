data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

resource "aws_network_interface" "main_ec2_network_interface01" {
  subnet_id   = aws_subnet.main_subnet_01a.id

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "main_ec2_web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.micro"

  network_interface {
    network_interface_id = aws_network_interface.main_ec2_network_interface01.id
    device_index         = 0
  }

  tags = {
    Name = "main_ec2_web"
    Type = "aws_instance"
    Region = "ap-northeast-1"
    Manager = "terraform 1.50.0"
    Provider = "1.3.7"
  }
}
