output "key_pair_name" {
  description = "The EC2 key pair name."
  value       = concat(aws_key_pair.this.*.key_name, [""])[0]
}

output "key_pair_fingerprint" {
  description = "The MD5 public key fingerprint."
  value       = concat(aws_key_pair.this.*.fingerprint, [""])[0]
}
