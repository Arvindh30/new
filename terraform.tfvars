# VPC values
aws_region           = "us-east-1"
name                 = "tasky-vpc"
vpc_cidr             = "10.0.0.0/16"
public_subnet_cidr   = "10.0.1.0/24"
az                   = "us-east-1a"

# Security Group values
sg_name        = "task-sg"
sg_description = "Allow SSH, HTTP and HTTPS"
ingress_rules = [
  {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  },
  {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
]

key_name         = "tasky-key"
public_key_path  = "keys/tasky-key.pub"

ami_id         = "ami-0a7d80731ae1b2435"  # ubuntu (us-east-1)
instance_type  = "t2.xlarge"
instance_names  = ["Jenkins-Slave & K8s-Master","K8s-Agent"]
user_data      = ""  # Or path to file using: file("init.sh")
root_volumes = [
  {
    volume_size = 10
    volume_type = "gp3"
  },
  {
    volume_size = 10
    volume_type = "gp3"
  }
]
