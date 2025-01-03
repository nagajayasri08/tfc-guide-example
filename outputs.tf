# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

# Output the AMI ID of the EC2 instance
output "instance_ami" {
  value = aws_instance.ubuntu.ami
}

# Output the ARN of the EC2 instance
output "instance_arn" {
  value = aws_instance.ubuntu.arn
}
