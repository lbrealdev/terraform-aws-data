# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "data" {
  description = "Controls whether to get data from the Cognito resource or not."
  type        = bool
}

variable "name" {
  description = "Name of the cognito user pools. Name is not a unique attribute for cognito user pool, so multiple pools might be returned with given name."
  type        = any
  default     = null
}