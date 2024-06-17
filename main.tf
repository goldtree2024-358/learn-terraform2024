#terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 4.16"
#    }
#  }
#
#  required_version = ">= 1.2.0"
#}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "app_server" {
  count                      = 2
  ami               		= var.instance_ami
  instance_type     		= var.instance_type
  availability_zone 		= var.availability_zone
  vpc_security_group_ids     = var.vpc_security_group_ids
  key_name                   = var.key_name

  tags = {
     Name = "${var.instance_name}_${count.index+1}"
  }
}

