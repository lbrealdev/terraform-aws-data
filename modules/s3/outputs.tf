output "bucket_name" {
  value = values(data.aws_s3_bucket.main)[*].bucket
}

output "bucket_domain_name" {
  value = values(data.aws_s3_bucket.main)[*].bucket_domain_name
}

output "website_domain" {
  value = values(data.aws_s3_bucket.main)[*].website_domain
}

output "website_endpoint" {
  value = values(data.aws_s3_bucket.main)[*].website_endpoint
}