output "key_pair_name" {
  description = "The EC2 key pair name."
  value       = module.aws_key_pair.key_pair_name
}

output "key_pair_fingerprint" {
  description = "The MD5 public key fingerprint."
  value       = module.aws_key_pair.key_pair_fingerprint
}
