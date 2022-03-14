variable "region" {
  description = "The region to provision resources in."
  type        = string
}

variable "key_name" {
  description = "The name for the EC2 key pair."
  type        = string
}

variable "public_key" {
  description = "The public key material."
  type        = string
}

variable "tags" {
  description = "A map of tags for the resources."
  type        = map(string)
}
