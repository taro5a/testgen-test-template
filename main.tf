provider "aws" {
  region = "us-west-2"
}

variable "bucket_prefix" {
  type = string
  default = "testgen-test"
}

resource "aws_s3_bucket" "bucket" {
  //bucket = "${var.bucket_prefix}-bucket"
  bucket = "${var.bucket_prefix}-bucket-check-if-cloud-run-sees-this"
}

output "bucket_name" {
  value = aws_s3_bucket.bucket.bucket
}
