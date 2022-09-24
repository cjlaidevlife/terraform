output "lab_vpc_cidr" {
  value = "${aws_vpc.main.cidr_block}"
  description = "lab vpc cidr"
}

output "lab_ecs_subnet_01_cidr" {
  value = "${aws_subnet.lab_ecs_subnet_01.cidr_block}"
  description = "lab ecs subnet 01 cidr"
}

output "lab_ecs_subnet_02_cidr" {
  value = "${aws_subnet.lab_ecs_subnet_02.cidr_block}"
  description = "lab ecs subnet 02 cidr"
}
