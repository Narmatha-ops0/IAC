# S3 Bucket Terraform Configuration

This directory contains Terraform configuration to create two S3 buckets: "working-iac-check" and "randamtest234" with best practices for security and management.

## Resources Created

- S3 bucket with the name "working-iac-check"
- S3 bucket with the name "randamtest234"
- Bucket versioning enabled for both buckets
- Server-side encryption with AES256 for both buckets
- Public access blocking for enhanced security on both buckets

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

Both buckets follow AWS best practices for security including encryption, versioning, and public access blocking.