variable "aws_region" {
  type = string
}

variable "kpname" {
  type = string
  description = "Name of the new key pair"
}

variable "pkey_path" {
  type = string
  description = "Path to the ssh public key"
}

variable "ec2_instance_type" {
  type = string
  description = "Type of the EC2 instance"
}

variable "sg_name" {
  type = string
  description = "Name of the new security group"
}