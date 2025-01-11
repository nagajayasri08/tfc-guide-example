# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Output the name of the S3 bucket
output "bucket_name" {
  value = aws_s3_bucket.example.bucket
}

# Output the ARN of the S3 bucket
output "bucket_arn" {
  value = aws_s3_bucket.example.arn
}

