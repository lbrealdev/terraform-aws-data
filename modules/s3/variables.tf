# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "data" {
  description = "Controls whether to get data from the Cognito resource or not."
  type        = bool
  default     = null
}

variable "bucket" {
  description = " The name of the bucket."
  type        = any
  default     = null
}