# VPC module
output "vpc_id" {
  value = module.aws_vpc.vpc_id
}

output "public_subnet_id" {
  value = module.aws_vpc.public_subnet_id
}

output "private_subnet_ids" {
  value = module.aws_vpc.private_subnet_ids
}

# SG module
output "security_group_id" {
  value = module.aws_security_group.security_group_id
}

# EC2 module
output "ec2_instance_id" {
  value = module.aws_ec2.EC2_instance_id
}

output "private_ec2_instance_id" {
  value = module.aws_ec2.EC2_private_instance_id
}

output "ec2_public_ip" {
  value = module.aws_ec2.EC2_public_ip
}

output "ec2_private_ip" {
  value = module.aws_ec2.EC2_private_ip
}

# RDS module
output "rds_endpoint" {
  value = module.aws_rds.rds_endpoint
}
