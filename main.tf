# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
provider "aws" {
  region  = var.region
  version = "~> 2.0"
}

terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# GET DATA FROM RESOURCES AWS
# ---------------------------------------------------------------------------------------------------------------------

module "data_cloudfront" {
  source = "./modules/cloudfront"

  data = true
  id   = ["E37DDHOS4ER8M7"]
}

module "data_cognito" {
  source = "./modules/cognito"

  data = true
  name = ["CognitoUserPoolDevCaucion"]
}

module "data_s3" {
  source = "./modules/s3"

  data = true
  bucket = [
    "s3frontdevcaucion",
    "s3staticsdevcaucion",
    "s3backendterraformdevcaucion"
  ]
}

module "data_kms" {
  source = "./modules/kms"

  data = true
  name = ["KmsMskDevCaucion"]
}