# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

output "instance_arn" {
  value = aws_instance.ubuntu.arn
}

output "s3_bucket_name" {
  value = aws_s3_bucket.example.bucket
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.example.arn
}
