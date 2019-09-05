variable "assume_role_principal_arn" {
  description = "The ARN of the role that FireHydrant provides for assuming the read-only role in your AWS account."
  default = "arn:aws:iam::815053439447:role/services/firehydrant-cloudtrail-readonly"
}

variable "firehydrant_external_id" {
  description = "The external ID provided from FireHydrant for the trust policy created in your AWS account"
}

variable "role_path" {
  description = "The path in which to place the FireHydrant role"
  default = "/services/"
}
