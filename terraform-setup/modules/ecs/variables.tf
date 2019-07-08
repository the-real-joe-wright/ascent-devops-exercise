variable "environment" {
  description = "The environment name"
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "availability_zones" {
  type        = "list"
  description = "The AZs to use"
}

variable "security_groups_ids" {
  type        = "list"
  description = "The SGs to use"
}

variable "private_subnet_ids" {
  type        = "list"
  description = "The private subnets to use"
}

variable "public_subnet_ids" {
  type        = "list"
  description = "The private subnets to use"
}

variable "repository_name" {
  description = "The name of the ECR repository"
}
