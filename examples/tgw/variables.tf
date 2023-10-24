variable "region" {
  type        = string
  description = "The default region for the test."
  default     = ""
}

variable "transit_gateway_name" {
    description = "The name of the Transit Gateway"
    type        = string
    default     = null
}

# variable "amazon_side_asn" {
#     description = "The private Autonomous System Number (ASN) for the Amazon side of a BGP session"
#     type        = number
#     default     = 64512
# }

# variable "auto_accept_shared_attachments" {
#     description = "Indicates whether resource attachments are automatically accepted (valid values: `disable`, `enable`)"
#     type        = string
#     default     = "disable"
# }

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default     = {}
}

variable "contact" {
  type        = string
  description = "(Required) The contact for this resource."
}

variable "environment" {
  type        = string
  description = "(Required) The environment where this resource will live."
}

variable "team" {
  type        = string
  description = "(Required) The team responsible for this resource."
}

variable "purpose" {
  type        = string
  description = "(Required) The purpose for this resource."
}