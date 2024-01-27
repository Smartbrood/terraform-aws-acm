# terraform-aws-acm

Terraform module to create ACM Certificate

module "acm" {
  source  = "Smartbrood/acm/aws"
  version = "1.0.0"
  route53_zone_name = "mydomain.org"
  subject_alternative_names = toset(["www.mydomain.org"])
}

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.74.3 |

## Resources

| Name | Type |
|------|------|
| [aws_acm_certificate.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate) | resource |
| [aws_acm_certificate_validation.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/acm_certificate_validation) | resource |
| [aws_route53_record.acm_validation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_route53_zone_name"></a> [route53\_zone\_name](#input\_route53\_zone\_name) | Domain name for which the certificate should be issued | `string` | n/a | yes |
| <a name="input_subject_alternative_names"></a> [subject\_alternative\_names](#input\_subject\_alternative\_names) | Set of domains that should be SANs in the issued certificate | `set(string)` | n/a | yes |
| <a name="input_allow_overwrite"></a> [allow\_overwrite](#input\_allow\_overwrite) | Allow creation of this record in Terraform to overwrite an existing record, if any | `bool` | `false` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to assign to the certificate resource. | `map(any)` | `{}` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | The TTL of the validation DNS record | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | ARN of the certificate |
| <a name="output_domain_name"></a> [domain\_name](#output\_domain\_name) | Domain name for which the certificate is issued |
| <a name="output_renewal_summary"></a> [renewal\_summary](#output\_renewal\_summary) | Contains information about the status of ACM's managed renewal for the certificate |
| <a name="output_status"></a> [status](#output\_status) | Status of the certificate |