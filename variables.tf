# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "my-unique-bucket-name-jayasri" # Replace with a globally unique bucket name
}

variable "bucket_acl" {
  description = "Access control list for the S3 bucket"
  default     = "private"
}

variable "bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  default     = true
}

variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"  # Optional default value
}

variable "instance_name" {
  description = "Name to assign to the EC2 instance"
  default     = "MyEC2Instancenew"  # Optional default value 
}

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

