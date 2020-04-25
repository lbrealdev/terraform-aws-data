# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# GET ALL DATA FROM AMAZON KMS
# ---------------------------------------------------------------------------------------------------------------------

data "aws_kms_alias" "main" {
  count = var.data ? length(var.name) : 0
  name = var.name[count.index]
}