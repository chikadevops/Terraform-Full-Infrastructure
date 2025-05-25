variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}

variable "project" {
  description = "Project name for tagging resources"
  type        = string
}
