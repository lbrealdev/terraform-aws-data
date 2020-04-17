# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "name" {
  description = "Name of the cognito user pools. Name is not a unique attribute for cognito user pool, so multiple pools might be returned with given name."
  type        = string
  default     = null
}