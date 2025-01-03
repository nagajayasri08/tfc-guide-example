# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Provider configuration for AWS
provider "aws" {
  region ="us-east-1"
}
# Define the EC2 instance
resource "aws_instance" "ubuntu" {
  ami           = var.ami_id  # Use a variable for the AMI ID
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}
# Define the S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = var.bucket_name
  acl    = var.bucket_acl

  versioning {
    enabled = var.bucket_versioning
  }

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}
