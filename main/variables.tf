# VPC module variables
variable "vpc-cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public-subnet-cidr" {
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
  description = "Availability Zone 1"
  type        = string
}

variable "az2" {
  description = "Availability Zone 2"
  type        = string
}

variable "az3" {
  description = "Availability Zone 3"
  type        = string
}

# EC2 module variables
variable "ami" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the EC2 instance"
  type        = map(string)

  default = {
    "dev"   = "t2.micro"
    "stage" = "t2.medium"
    "prod"  = "t2.large"
  }
}

variable "key_name" {
  description = "Key pair name for SSH access to the EC2 instance"
  type        = string
}

variable "public_ec2_number" {
  description = "Number of public EC2 instances to create"
  type        = number
}

variable "private_ec2_number" {
  description = "Number of private EC2 instances to create"
  type        = number
}

# RDS module variables
variable "allocated_storage" {
  type = number
}

variable "engine" {
  type = string
}

variable "engine_version" {
  description = "Database engine version"
  type        = string
}

variable "instance_class" {
  type = string
}

variable "username" {
  description = "Database username"
  type        = string
}

variable "password" {
  description = "Database password"
  type        = string
}

# General variables
variable "project" {
  description = "Project name"
  type        = string
}

