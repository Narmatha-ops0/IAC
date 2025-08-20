# S3 Bucket Terraform Configuration

This directory contains Terraform configuration to create an S3 bucket named "working-iac-check" with best practices for security and management.

## Resources Created

- S3 bucket with the name "working-iac-check"
- Bucket versioning enabled
- Server-side encryption with AES256
- Public access blocking for enhanced security

## Usage

1. Initialize Terraform:
```bash
terraform init
```

2. Review the plan:
```bash
terraform plan
```

3. Apply the configuration:
```bash
terraform apply
```

4. To destroy the resources:
```bash
terraform destroy
```

## Configuration

You can modify the variables in `variables.tf` to customize:
- AWS region
- Bucket name
- Environment tag

## Outputs

After applying, Terraform will output:
- S3 bucket ID
- S3 bucket ARN
- S3 bucket region