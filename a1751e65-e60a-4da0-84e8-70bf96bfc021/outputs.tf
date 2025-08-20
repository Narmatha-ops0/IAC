output "s3_bucket_id" {
  description = "The ID of the S3 bucket"
  value       = aws_s3_bucket.working_iac_check.id
}

output "s3_bucket_arn" {
  description = "The ARN of the S3 bucket"
  value       = aws_s3_bucket.working_iac_check.arn
}

output "s3_bucket_region" {
  description = "The region of the S3 bucket"
  value       = aws_s3_bucket.working_iac_check.region
}

output "neeteshtest23432_bucket_id" {
  description = "The ID of the neeteshtest23432 S3 bucket"
  value       = aws_s3_bucket.neeteshtest23432.id
}

output "neeteshtest23432_bucket_arn" {
  description = "The ARN of the neeteshtest23432 S3 bucket"
  value       = aws_s3_bucket.neeteshtest23432.arn
}

output "neeteshtest23432_bucket_region" {
  description = "The region of the neeteshtest23432 S3 bucket"
  value       = aws_s3_bucket.neeteshtest23432.region
}