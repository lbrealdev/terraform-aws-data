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
  count = var.data ? 1 : 0
  state = var.state[count.index]
}

data "aws_subnet_ids" "main" {
  count  = var.data && data.aws_vpc.main != "" ? 1 : 0
  vpc_id = element(concat(data.aws_vpc.main.*.id, [""]), 0)

  tags = {
    Name = "*.subnet"
  }
}

data "aws_network_acls" "main" {
  count  = var.data && data.aws_vpc.main.id != "" ? 1 : 0
  vpc_id = element(concat(data.aws_vpc.main.*.id, [""]), 0)
}