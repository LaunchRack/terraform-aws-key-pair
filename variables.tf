variable "key_name" {
  description = "The name for the EC2 key pair."
  type        = string
  default     = null
}

variable "public_key" {
  description = "The public key material."
  type        = string
  default     = ""
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
  default     = {}
}
