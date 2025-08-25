# S3 Bucket Terraform Configuration

This directory contains Terraform configuration to create S3 buckets: "working-iac-check", "randamtest234", "neeteshtest23432", and "iac-check-325rfe" with best practices for security and management.

## Resources Created

- S3 bucket with the name "working-iac-check"
- S3 bucket with the name "randamtest234"
- S3 bucket with the name "neeteshtest23432"
- S3 bucket with the name "iac-check-325rfe"
- Bucket versioning enabled for all buckets
- Server-side encryption with AES256 for all buckets
- Public access blocking for enhanced security on all buckets

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
- S3 bucket IDs
- S3 bucket ARNs
- S3 bucket regions

All buckets follow AWS best practices for security including encryption, versioning, and public access blocking.