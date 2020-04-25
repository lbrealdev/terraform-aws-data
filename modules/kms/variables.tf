# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "data" {
  description = "Controls whether to get data from the KMS resource or not."
  type        = bool
}

variable "name" {
  description = "The display name of the alias."
  type        = any
  default     = null
}