variable "ami_id" {
  description = "AMI ID to launch"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to launch instance into"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID to associate"
  type        = string
}

variable "key_name" {
  description = "Key pair name to use for SSH"
  type        = string
}

variable "instance_names" {
  description = "List of names for each EC2 instance"
  type        = list(string)
}

variable "user_data" {
  description = "Optional startup script"
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
