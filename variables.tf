variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "Ansible_mem"
}

variable "instance_ami" {
  description = "Value of the ami for the EC2 instance"
  type        = string
  default     = "ami-08a0d1e16fc3f61ea"
}

variable "instance_type" {
  description = "Value of the type for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "availability_zone" {
  description = "Value of the AZ for the EC2 instance"
  type        = string
  default     = "us-east-1b"
}

variable "vpc_security_group_ids" {
  description = "Value of the SG for the EC2 instance"
  type        = set(string)
  default     = ["sg-052590e460117f9ad"]
}

variable "key_name" {
  description = "Value of the SG for the EC2 instance"
  type        = string
  default     = "Ansible"
}
