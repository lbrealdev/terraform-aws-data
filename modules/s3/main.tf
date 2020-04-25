# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# GET ALL DATA FROM AMAZON S3 BUCKET
# ---------------------------------------------------------------------------------------------------------------------

data "aws_s3_bucket" "main" {
  count = var.data ? 1 : 0
  for_each = var.bucket

  bucket = each.value
}