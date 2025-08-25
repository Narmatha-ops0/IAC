# S3 Bucket Terraform Configuration

This directory contains Terraform configuration to create an S3 bucket named "iac-check-325rfe34" with best practices implemented:

## Features

- **Versioning**: Enabled to maintain a history of object versions
- **Encryption**: Server-side encryption with AES256 algorithm
- **Public Access Blocking**: All public access is blocked by default
- **Tagging**: Proper tagging for resource management

## Usage

To deploy this S3 bucket:

1. Initialize Terraform:
   ```
   terraform init
   ```

2. Plan the deployment:
   ```
   terraform plan
   ```

3. Apply the configuration:
   ```
   terraform apply
   ```

## Outputs

- `s3_bucket_id`: The ID of the S3 bucket
- `s3_bucket_arn`: The ARN of the S3 bucket
- `s3_bucket_domain_name`: The domain name of the S3 bucket
- `s3_bucket_region`: The region of the S3 bucket