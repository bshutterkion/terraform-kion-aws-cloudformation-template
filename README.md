<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kion"></a> [kion](#requirement\_kion) | ~> 0.3.18 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kion"></a> [kion](#provider\_kion) | ~> 0.3.18 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kion_aws_cloudformation_template.this](https://registry.terraform.io/providers/kionsoftware/kion/latest/docs/resources/aws_cloudformation_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the template | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the CloudFormation template | `string` | n/a | yes |
| <a name="input_owner_user_groups"></a> [owner\_user\_groups](#input\_owner\_user\_groups) | List of owner user groups for the template | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_owner_users"></a> [owner\_users](#input\_owner\_users) | List of owner users for the template | <pre>list(object({<br>    id = number<br>  }))</pre> | `[]` | no |
| <a name="input_policy"></a> [policy](#input\_policy) | The CloudFormation template policy | `string` | `null` | no |
| <a name="input_policy_template"></a> [policy\_template](#input\_policy\_template) | Path to a template file for the CloudFormation policy | `string` | `null` | no |
| <a name="input_region"></a> [region](#input\_region) | The region where the CloudFormation stack will be deployed | `string` | `null` | no |
| <a name="input_regions"></a> [regions](#input\_regions) | The regions where the template will be deployed | `set(string)` | n/a | yes |
| <a name="input_sns_arns"></a> [sns\_arns](#input\_sns\_arns) | SNS ARNs for stack notifications | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Stack-level tags that will apply to all supported resources in the CloudFormation stack | `map(string)` | `{}` | no |
| <a name="input_template_parameters"></a> [template\_parameters](#input\_template\_parameters) | Parameters for the CloudFormation template | `string` | `null` | no |
| <a name="input_termination_protection"></a> [termination\_protection](#input\_termination\_protection) | Whether to enable termination protection | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_cloudformation_template_id"></a> [cloudformation\_template\_id](#output\_cloudformation\_template\_id) | n/a |
<!-- END_TF_DOCS -->