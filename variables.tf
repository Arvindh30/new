# VPC variables
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "name" {
  description = "Prefix for VPC and resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
}

variable "az" {
  description = "Availability Zone"
  type        = string
}

# Security Group variables

variable "sg_name" {
  description = "Name of the security group"
  type        = string
}

variable "sg_description" {
  description = "Description of the security group"
  type        = string
}

variable "ingress_rules" {
  description = "List of ingress rules for the security group"
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
}

variable "key_name" {
  description = "Name of the SSH key pair"
  type        = string
}

variable "public_key_path" {
  description = "Path to the public key (.pub)"
  type        = string
}

variable "ami_id" {
  description = "The ID of the AMI to use for the EC2 instance (e.g., Amazon Linux 2 AMI)"
  type        = string
}

variable "instance_type" {
  description = "The EC2 instance type to launch (e.g., t2.micro)"
  type        = string
}

variable "instance_names" {
  description = "List of EC2 instance names"
  type        = list(string)
}

variable "user_data" {
  description = "Optional user data script to run on EC2 instance at launch (e.g., install packages)"
  type        = string
  default     = ""
}

variable "root_volumes" {
  description = "List of root volume settings per instance"
  type = list(object({
    volume_size = number
    volume_type = string
  }))
}
