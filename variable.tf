variable "queues" {
  description = "Map of queue names and their properties"
  type        = any
  default     = {}
}
# tflint-ignore: terraform_typed_variables
variable "tags" {}

variable "enable_redrive_policy" {
  type    = bool
  default = false # Set this to true if you want to enable the redrive policy by default
}
