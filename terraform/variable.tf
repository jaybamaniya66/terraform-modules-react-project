variable "aws_region" {
  description = "this will be the region of the cluster"
  default = "us-east-1"
  type = string
}

variable "vpc" {
    description = "description for vpc"
    type = string
}

variable "private_subnets" {
    description = "description for public subnets"
    type = list(string)
    default = ["10.0.1.0/24","10.0.2.0/24"]
}

variable "public_subnets" {
    type = list(string)
    default = ["10.0.3.0/24","10.0.4.0/24"]
}

variable "az" {
    type = list(string)
  default = ["us-east-1a","us-east-1b"]
}
