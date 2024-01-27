variable "route53_zone_name" {
  description = "Domain name for which the certificate should be issued"
  type        = string
}

variable "subject_alternative_names" {
  description = "Set of domains that should be SANs in the issued certificate"
  type        = set(string)
}

variable "ttl" {
  description = "The TTL of the validation DNS record"
  type        = number
  default     = 60
}

variable "allow_overwrite" {
  description = "Allow creation of this record in Terraform to overwrite an existing record, if any"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Map of tags to assign to the certificate resource."
  type        = map(any)
  default = {

  }
}
