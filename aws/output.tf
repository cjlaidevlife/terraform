output "vpc_main_cidr" {
  value = aws_vpc.main.cidr_block
  description = "main vpc cidr"
}

output "subnet_main_subnet_01a_cidr" {
  value = aws_subnet.main_subnet_01a.cidr_block
  description = "main_subnet_01a cidr"
}

output "subnet_main_subnet_02c_cidr" {
  value = aws_subnet.main_subnet_02c.cidr_block
  description = "main_subnet_02c cidr"
}

output "ecr_main_ecr_01_url" {
  value = aws_ecr_repository.main_ecr_01.repository_url
  description = "aws ecr"
}
