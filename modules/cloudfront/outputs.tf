locals {
  cloudfront_id = element(concat(data.aws_cloudfront_distribution.main.*.id, [""]), 0)
}

output "this_cloudfront_id" {
  value = local.cloudfront_id
}

output "id" {
  value = data.aws_cloudfront_distribution.main.id
}