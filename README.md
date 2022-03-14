<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>
<br>
<br>
<p><h4 align="center">Need help with Cloud-Native DevOps? <a href="https://launchrack.com/contact/" target="_blank" rel="contactus"> GET IN TOUCH</a></h4></p>

---

# Terraform AWS key pair 

[![GitHub license](https://img.shields.io/github/license/launchrack/terraform-aws-key-pair?color=blue)](https://github.com/LaunchRack/terraform-aws-key-pair/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/launchrack/terraform-aws-key-pair?color=blue&display_name=release)

Creates an EC2 key pair on AWS

## Features
- Creates an EC2 key pair resource with the provided public key

## Usage
```hcl
module "aws_key_pair" {
  source        = "git::https://github.com/LaunchRack/terraform-aws-key-pair.git"

  key_name      = "tools_dev"
  public_key    = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"

  tags = {
    BusinessUnit = "tools"
    Application  = "cicd"
  }
}
```

## Setup Instructions
`terraform init`

`terraform plan` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-key-pair/blob/main/examples/terraform.tfvars) folder

`terraform apply -auto-approve` # use `-var-file=terraform.tfvars` if you plan to use a different file for the value overrides. See [examples](https://github.com/LaunchRack/terraform-aws-key-pair/blob/main/examples/terraform.tfvars) folder


> **Note:** The `terraform.tfvars` file will need to be created in the root directory with value overrides

## Requirements
| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement_terraform) | ~> 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement_aws) | ~> 4.0 |
| <a name="requirement_local"></a> [local](#requirement_local) | ~> 2.0 |
| <a name="requirement_null"></a> [null](#requirement_null) | ~> 3.0 |

## Providers
| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider_aws) | ~> 4.0 |

## Resources
| Name | Type |
|------|------|
| [aws_key_pair.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/key_pair) | resource |

## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_name"></a> [key_name](#input_key_name) | The name for the EC2 key pair. | `string` | `null` | yes |
| <a name="input_public_key"></a> [public_key](#input_public_key) | The public key material. | `string` | `""` | yes |
| <a name="input_tags"></a> [tags](#input_tags) | A map of tags for the resources. | `map(string)` | `{}` | no |

## Outputs
| Name | Description |
|------|-------------|
| <a name="output_key_pair_fingerprint"></a> [key_pair_fingerprint](#output_key_pair_fingerprint) | The MD5 public key fingerprint. |
| <a name="output_key_pair_name"></a> [key_pair_name](#output_key_pair_name) | The EC2 key pair name. |

## Authors
This module is maintained by our awsome platform engineering team. Here are our [contributors](https://github.com/LaunchRack/terraform-aws-key-pair/graphs/contributors)

## License
See [LICENSE](https://github.com/LaunchRack/terraform-aws-key-pair/blob/master/LICENSE) for full details

## Trademarks
All other trademarks referenced herein are the property of their respective owners