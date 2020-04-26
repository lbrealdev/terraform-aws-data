# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# GET ALL DATA FROM AMAZON CLOUDFRONT DISTRIBUTION
# ---------------------------------------------------------------------------------------------------------------------

data "aws_cloudfront_distribution" "main" {
  count = var.data && var.id != "" ? length(var.id) : 0
  id    = var.id[count.index]
}