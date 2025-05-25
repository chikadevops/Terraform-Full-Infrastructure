variable "project" {
  description = "Project name"
  type        = string
}

variable "private_subnet_ids" {
  type = list(string)
}

variable "allocated_storage" {
  type    = number
  default = 20
}

variable "engine" {
  type    = string
  default = "mysql"
}

variable "engine_version" {
  type    = string
  default = "8.0"
}

variable "instance_class" {
  type    = string
  default = "db.t3.micro"
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "security_group_ids" {
  type = list(string)
}

