# --- networking/outputs.tf ---

output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets" {
  value = {
    for key, subnet in aws_subnet.public_subnets : key => subnet.id
  }
}

output "bastion_public_subnet_id" {
  value = aws_subnet.public_subnets[element(keys(aws_subnet.public_subnets), 0)].id
}

output "private_appsubnets" {
  value = {
    for key, subnet in aws_subnet.private_appsubnets : key => subnet.id
  }
}

output "db_subnet_group_names" {
  value = aws_db_subnet_group.rds_subnet_group.*.name
}