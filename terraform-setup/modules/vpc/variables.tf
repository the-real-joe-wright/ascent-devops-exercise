variable "vpc_cidr" {
  description = "The CIDR block of the VPC"
}

variable "public_subnets_cidr" {
  type        = "list"
  description = "The CIDR block for the public subnet"
}

variable "private_subnets_cidr" {
  type        = "list"
  description = "The CIDR block for the private subnet"
}

variable "environment" {
  description = "Environment name"
}

variable "region" {
  description = "The region in which to launch the instances"
}

variable "availability_zones" {
  type        = "list"
  description = "The AZ in which the resources will be launched"
}
