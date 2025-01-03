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
