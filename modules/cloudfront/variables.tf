# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "data" {
  description = "Controls whether to get data from the Cloudfront resource or not."
  type        = bool
}

variable "id" {
  description = "The identifier for the distribution."
  type        = string
  default     = null
}