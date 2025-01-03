variable "region" {
  description = "AWS region"
  default     = "us-west-1"
}

variable "instance_type" {
  description = "Type of EC2 instance"
  default     = "t2.micro"
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  default     = "MyEC2Instance_bucket"
}

variable "bucket_name" {
  description = "S3 bucket name"
  default     = "my-unique-bucket-name-jayasri"
}

variable "bucket_acl" {
  description = "Access control list for the S3 bucket"
  default     = "private"
}

variable "bucket_versioning" {
  description = "Enable versioning for the S3 bucket"
  default     = true
}
