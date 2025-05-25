variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
}

variable "private_subnet_cidr_1" {
  description = "CIDR block for the private subnet"
  type        = string
}

variable "private_subnet_cidr_2" {
  description = "CIDR block for the second private subnet"
  type        = string
}

variable "az1" {
  description = "Availability Zone for the public subnet"
  type        = string
}
variable "az2" {
  description = "Availability Zone for private subnet 1"
  type        = string
}

variable "az3" {
  description = "Availability Zone for private subnet 2"
  type        = string
}

variable "project" {
  description = "Project name for tagging resources"
  type        = string
}
