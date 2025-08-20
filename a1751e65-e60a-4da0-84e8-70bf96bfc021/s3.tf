provider "aws" {
  region = "us-west-2"  # You can change this to your preferred AWS region
}

resource "aws_s3_bucket" "working_iac_check" {
  bucket = "working-iac-check"
  
  tags = {
    Name        = "Working IAC Check"
    Environment = "Dev"
    Terraform   = "true"
  }
}

# Configure versioning for the S3 bucket
resource "aws_s3_bucket_versioning" "working_iac_check_versioning" {
  bucket = aws_s3_bucket.working_iac_check.id
  
  versioning_configuration {
    status = "Enabled"
  }
}

# Configure server-side encryption for the S3 bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "working_iac_check_encryption" {
  bucket = aws_s3_bucket.working_iac_check.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

# Block public access to the S3 bucket
resource "aws_s3_bucket_public_access_block" "working_iac_check_public_access_block" {
  bucket = aws_s3_bucket.working_iac_check.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}