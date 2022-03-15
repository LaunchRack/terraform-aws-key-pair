<p align="center">
  <a href="https://launchrack.com/" target="_blank" rel="homepage">
  <img src="https://launchrack.com/assets/img/logo_launchrack.png" alt="LaunchRack logo" style="width: 600px;" class="d-md-inline-block">
  </a>
</p>

<p>
We are huge followers of the <b>Cloud-Native DevOps</b> movement and are firm believers in the power of treating <b>Infrastructure as Code</b> using immutable architecture & <b>GitOps</b> style deployments. We adhere to a strict automation mindset (automation first, as opposed to manual first with automation later) and strive to provide the best technical acumen that will enable organizations improve <b>Cloud Security</b> Posture, <b>Release</b> More Often, <b>Scale</b> with Demand, Brace <b>Agility</b>, Operate within <b>Budget</b> and focus on value derived by the time saved on the execution of a task rather than having to spend cycles on design & tool selection.
</p>

<p>
  <h4 align="center"> 
    Our consistent and automated processes can help you improve:
  </h4>
</p>

<div style="margin:0 auto;width:400px">
  <p style="text-align: left;">
    <span style="color:green">✔</span> Better <b>utilization</b> of cloud resources by 40% <br>
    <span style="color:green">✔</span> Self-service infrastructure <b>provisioning</b> by 35% <br>
    <span style="color:green">✔</span> <b>Security</b> and governance by 30% <br>
    <span style="color:green">✔</span> Return on value/investment by 20% <br>
    <span style="color:green">✔</span> Team management & <b>governance</b> by 15% <br>
    <span style="color:green">✔</span> Earlier <b>detection</b> of bugs by 32% <br>
    <span style="color:green">✔</span> Response to issues/events by 23% <br>
  </p>
</div>

<p>
  <h4 align="center">
    Chat more?
    <a href="mailto:info@launchrack.com">Email</a>
    <span style="color:white"> | </span> 
    <a href="https://launchrack.com/contact/" target="_blank">Contact us</a>
  </h4>
</p>
<p align="center">
     <a href="https://www.linkedin.com/company/launchrack"> 
     <img alt="linkedin logo" src="https://user-images.githubusercontent.com/100512415/158441415-f399bf91-f65a-4568-8882-2785715c86b0.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.twitter.com/launchrack">
     <img alt="twitter logo" src="https://user-images.githubusercontent.com/100512415/158441443-3851792d-2a40-47f6-a45a-7f576134797b.png" style="height: 20px;width: 20px;"/>
     </a>
     <a href="https://www.facebook.com/launchrack">
     <img alt="facebook logo" src="https://user-images.githubusercontent.com/100512415/158447347-2068d8c1-80fa-4f15-a9a0-7aeff94a7fd9.png" style="height: 20px;width: 20px;"/>
     </a>
</p>

---

# Terraform AWS key pair 

[![GitHub license](https://img.shields.io/github/license/launchrack/terraform-aws-key-pair?color=blue)](https://github.com/LaunchRack/terraform-aws-key-pair/blob/main/LICENSE)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/launchrack/terraform-aws-key-pair?color=blue&display_name=release)

Creates an EC2 key pair on AWS

## Features
Creates an EC2 key pair resource with the provided public key

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