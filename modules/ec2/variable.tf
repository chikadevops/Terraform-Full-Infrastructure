variable "ami" {
  description = "Value for ami"
  type        = string
}

variable "instance_type" {
  description = "Value for instance_type"
  type        = string
}

variable "private_ec2_number" {
  description = "Value for count"
  type        = number
}

variable "public_ec2_number" {
  description = "Value for count"
  type        = number
}

variable "public_subnet_id" {
  description = "Value for public_subnet_id"
  type        = string
}

variable "private_subnet_id_1" {
  description = "Value for private_subnet_id"
  type        = string
}

variable "security_group_ids" {
  description = "Value for security_group_ids"
  type        = list(string)
}

variable "key_name" {
  description = "Value for key_name"
  type        = string
}

variable "project" {
  description = "Value for project"
  type        = string
}
