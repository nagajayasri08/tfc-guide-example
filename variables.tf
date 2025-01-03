# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Define AWS region
variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

# Define S3 bucket name
variable "bucket_name" {
  description = "Name of the S3 bucket"
  default     = "my-unique-bucket-name-jayasri"  # Replace with a globally unique bucket name
}

# Define S3 bucket ACL
variable "bucket_acl" {
  description = "Access control list for the S3 bucket"
  default     = "private"
}

# Define versioning for S3 bucket
variable "bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  default     = true
}

# Define the instance type for EC2
variable "instance_type" {
  description = "Type of EC2 instance to provision"
  default     = "t2.micro"
}

# Define the instance name for EC2
variable "instance_name" {
  description = "Name to assign to the EC2 instance"
  default     = "MyEC2Instance"
}

# Define AMI ID for EC2 instance
variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  default     = "ami-0657605d763ac72a8"  # Use the specified AMI ID
}

