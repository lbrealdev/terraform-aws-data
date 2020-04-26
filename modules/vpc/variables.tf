# ---------------------------------------------------------------------------------------------------------------------
# PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "data" {
  description = "Controls whether to get data from the VPC resource or not."
  type        = bool
}

variable "state" {
  description = "The current state of the desired VPC. Can be either `pending` or `available`."
  type        = any
  default     = null
}