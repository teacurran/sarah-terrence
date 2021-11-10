variable "site" {
  default = "mostlycats"
}

variable "environment" {
  default = "production"
}

variable "domain_name" {
  type        = string
  default     = "mostlycats.pizza"
}

variable "domain_name_2" {
  type        = string
  default     = "mostlycats.org"
}

variable "bucket_name" {
  type        = string
  description = "The name of the bucket without the www. prefix. Normally domain_name."
}

variable "common_tags" {
  description = "Common tags you want applied to all components."
}