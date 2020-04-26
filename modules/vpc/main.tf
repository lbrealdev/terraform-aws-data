# ----------------------------------------------------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer compatible with any versions below 0.12.
# ----------------------------------------------------------------------------------------------------------------------
terraform {
  required_version = "~> 0.12"
}

# ---------------------------------------------------------------------------------------------------------------------
# GET ALL DATA FROM AMAZON VPC
# ---------------------------------------------------------------------------------------------------------------------

data "aws_vpc" "main" {
  count = var.data && var.state == "" ? length(var.state) : 0
  state = var.state[count.index]
}

data "aws_subnet_ids" "main" {
  count  = var.data && data.aws_vpc.main != "" ? 1 : 0
  vpc_id = data.aws_vpc.main[*].id

  tags = {
    Name = "*.private-*"
  }
}