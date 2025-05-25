output "EC2_instance_id" {
  description = "ID of the EC2 instance"
  value       = [for instance in aws_instance.public_instance : instance.id]
}

output "EC2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = [for instance in aws_instance.public_instance : instance.public_ip]
}

output "EC2_private_instance_id" {
  description = "ID of the private EC2 instance"
  value       = [for instance in aws_instance.private_instance : instance.id]
}

output "EC2_private_ip" {
  description = "Private IP of the EC2 instance"
  value       = [for instance in aws_instance.private_instance : instance.private_ip]
}
