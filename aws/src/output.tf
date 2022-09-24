output "lab_vpc_cidr" {
  value = "${aws_vpc.main.cidr_block}"
}
