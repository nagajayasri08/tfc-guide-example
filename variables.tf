# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Define AWS region
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
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



