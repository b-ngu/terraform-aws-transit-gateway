# Transit Gateway Terraform Module

This module provisions an AWS Transit Gateway.

## Resources

This module creates the following resources:
- AWS Transit Gateway

## Helpful AWS Documentation Links

* [Transit Gateway: How They Work](https://docs.aws.amazon.com/vpc/latest/tgw/what-is-transit-gateway.html)
* [Transit Gateway: Route Tables](https://docs.aws.amazon.com/vpc/latest/tgw/tgw-route-tables.html)

## Usage

```hcl
module "transit_gateway" {
  source                   = "path_to_this_module"
  transit_gateway_name     = "MyTransitGateway"
  amazon_side_asn          = 64512
  auto_accept_shared_attachments = "disable"
}
```
Replace `path_to_this_module` with the path to where you have this module.

## Tags

To configure any additional tags, set tags map in module definition

```hcl

module "transit_gateway" {
  source              = "path_to_this_module"
  amazon_side_asn                = 64512
  auto_accept_shared_attachments = disable
  transit_gateway_name           = MyTransitGateway
  tags = {
    key1        = "value1"
    key2        = "value2"
  }
}

```

## Examples

* [VPN Connection](./examples/tgw)

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.2.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >=4.28 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >=4.28 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_ec2_transit_gateway.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_amazon_side_asn"></a> [amazon_side_asn](#input_amazon_side_asn) | The private Autonomous System Number (ASN) for the Amazon side of a BGP session | `number` | 64512 | no |
| <a name="input_auto_accept_shared_attachments"></a> [auto_accept_shared_attachments](#input_auto_accept_shared_attachments) | Indicates whether resource attachments are automatically accepted (valid values: `disable`, `enable`) | `string` | "disable" | no |
| <a name="input_contact"></a> [contact](#input\_contact) | (Required) The contact for this resource. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | (Required) The environment where this resource will live. | `string` | n/a | yes |
| <a name="input_purpose"></a> [purpose](#input\_purpose) | (Required) The purpose for this resource. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources | `map(string)` | `{}` | no |
| <a name="input_team"></a> [team](#input\_team) | (Required) The team responsible for this resource. | `string` | n/a | yes |
| <a name="input_transit_gateway_name"></a> [transit_gateway_name](#input_transit_gateway_name) | The name of the Transit Gateway | `string` | "MyTransitGateway" | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_transit_gateway_arn"></a> [transit_gateway_arn](#output_transit_gateway_arn) | The ARN of the Transit Gateway |
| <a name="output_transit_gateway_id"></a> [transit_gateway_id](#output_transit_gateway_id) | The ID of the Transit Gateway |
| <a name="output_transit_gateway_owner_id"></a> [transit_gateway_owner_id](#output_transit_gateway_owner_id) | The ID of the AWS account that owns the Transit Gateway |

