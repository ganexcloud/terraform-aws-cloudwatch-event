<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.63 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.3.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.63 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_event_rule.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_rule) | resource |
| [aws_cloudwatch_event_target.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_event_target) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (Optional) The description of the rule. | `string` | `null` | no |
| <a name="input_event_bus_name"></a> [event\_bus\_name](#input\_event\_bus\_name) | (Optional) The event bus to associate with this rule. If you omit this, the default event bus is used. | `string` | `null` | no |
| <a name="input_event_pattern"></a> [event\_pattern](#input\_event\_pattern) | (Optional) The event pattern described a JSON object. At least one of schedule\_expression or event\_pattern is required. See full documentation of Events and Event Patterns in EventBridge for details. | `string` | `null` | no |
| <a name="input_is_enabled"></a> [is\_enabled](#input\_is\_enabled) | (Optional) Whether the rule should be enabled (defaults to true). | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | (Optional) The name of the rule. If omitted, Terraform will assign a random, unique name. Conflicts with name\_prefix. | `string` | `null` | no |
| <a name="input_name_prefix"></a> [name\_prefix](#input\_name\_prefix) | (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name. | `string` | `null` | no |
| <a name="input_role_arn"></a> [role\_arn](#input\_role\_arn) | (Optional) The Amazon Resource Name (ARN) associated with the role that is used for target invocation. | `string` | `null` | no |
| <a name="input_schedule_expression"></a> [schedule\_expression](#input\_schedule\_expression) | (Optional) The scheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes). At least one of schedule\_expression or event\_pattern is required. Can only be used on the default event bus. For more information, refer to the AWS documentation Schedule Expressions for Rules. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (Optional) A map of tags to assign to the resource. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. | `map(string)` | `{}` | no |
| <a name="input_target_arn"></a> [target\_arn](#input\_target\_arn) | (Required) The Amazon Resource Name (ARN) of the target. | `string` | `null` | no |
| <a name="input_target_id"></a> [target\_id](#input\_target\_id) | (Optional) The unique target assignment ID. If missing, will generate a random, unique id. | `string` | `null` | no |
| <a name="input_target_input"></a> [target\_input](#input\_target\_input) | (Optional) Valid JSON text passed to the target. Conflicts with input\_path and input\_transformer. | `string` | `null` | no |
| <a name="input_target_input_path"></a> [target\_input\_path](#input\_target\_input\_path) | (Optional) The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. Conflicts with input and input\_transformer. | `string` | `null` | no |
| <a name="input_target_role_arn"></a> [target\_role\_arn](#input\_target\_role\_arn) | (Optional) The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs\_target is used or target in arn is EC2 instance, Kinesis data stream or Step Functions state machine. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_arn"></a> [arn](#output\_arn) | The Amazon Resource Name (ARN) of the rule. |
| <a name="output_description"></a> [description](#output\_description) | (Optional) The description of the rule. |
| <a name="output_event_bus_name"></a> [event\_bus\_name](#output\_event\_bus\_name) | (Optional) The event bus to associate with this rule. If you omit this, the default event bus is used. |
| <a name="output_event_pattern"></a> [event\_pattern](#output\_event\_pattern) | (Optional) The event pattern described a JSON object. At least one of schedule\_expression or event\_pattern is required. See full documentation of Events and Event Patterns in EventBridge for details. |
| <a name="output_id"></a> [id](#output\_id) | The name of the rule. |
| <a name="output_is_enabled"></a> [is\_enabled](#output\_is\_enabled) | (Optional) Whether the rule should be enabled (defaults to true). |
| <a name="output_name"></a> [name](#output\_name) | (Optional) The name of the rule. If omitted, Terraform will assign a random, unique name. Conflicts with name\_prefix. |
| <a name="output_name_prefix"></a> [name\_prefix](#output\_name\_prefix) | (Optional) Creates a unique name beginning with the specified prefix. Conflicts with name. |
| <a name="output_role_arn"></a> [role\_arn](#output\_role\_arn) | (Optional) The Amazon Resource Name (ARN) associated with the role that is used for target invocation. |
| <a name="output_schedule_expression"></a> [schedule\_expression](#output\_schedule\_expression) | (Optional) The scheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes). At least one of schedule\_expression or event\_pattern is required. Can only be used on the default event bus. For more information, refer to the AWS documentation Schedule Expressions for Rules. |
| <a name="output_tags"></a> [tags](#output\_tags) | (Optional) A map of tags to assign to the resource. If configured with a provider default\_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level. |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags configuration block. |
<!-- END_TF_DOCS -->