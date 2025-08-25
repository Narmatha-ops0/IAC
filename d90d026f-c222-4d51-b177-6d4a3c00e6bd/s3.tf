provider "aws" {
  region = "us-west-2"  # You can change this to your preferred AWS region
}

resource "aws_s3_bucket" "iac_check_325rfe34" {
  bucket = "iac-check-325rfe34"
  
  tags = {
    Name        = "IAC Check 325rfe34"
    Environment = "Dev"
    Terraform   = "true"
  }
}

# Configure versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "iac_check_325rfe34_versioning" {
  bucket = aws_s3_bucket.iac_check_325rfe34.id
  
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure server-side encryption for the S3 bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "iac_check_325rfe34_encryption" {
  bucket = aws_s3_bucket.iac_check_325rfe34.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "iac_check_325rfe34_public_access_block" {
  bucket = aws_s3_bucket.iac_check_325rfe34.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}