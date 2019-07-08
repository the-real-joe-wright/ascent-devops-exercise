variable "region" {
  description = "Region in which the instances will be created"
  default     = "us-east-1"
}

variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_account_id" {}

variable "aws_region" {
  description = "AWS region (e.g. us-east-1). MUST BE a region supported by the Fargate launch type."
  default     = "us-east-1"
}

variable "aws_resource_prefix" {
  description = "Prefix to be used in the naming of some of the created AWS resources e.g. demo-webapp"
}
