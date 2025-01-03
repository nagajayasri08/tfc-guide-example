# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

provider "aws" {
  region = var.region
}

# Define the EC2 instance
resource "aws_instance" "ubuntu" {
  ami           = "ami-0657605d763ac72a8"  # Use the specified AMI ID
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

# Define other variables
variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "EC2 instance name"
  default     = "Provisioned by Terraform"
}
