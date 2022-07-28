variable "name" {
  description = "(Optional) The name of the rule. If omitted, Terraform will assign a random, unique name. Conflicts with name_prefix."
  type        = string
  default     = null
}

variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
  default     = null
}

variable "schedule_expression" {
  description = "(Optional) The scheduling expression. For example, cron(0 20 * * ? *) or rate(5 minutes). At least one of schedule_expression or event_pattern is required. Can only be used on the default event bus. For more information, refer to the AWS documentation Schedule Expressions for Rules."
  type        = string
  default     = null
}

variable "event_bus_name" {
  description = "(Optional) The event bus to associate with this rule. If you omit this, the default event bus is used."
  type        = string
  default     = null
}

variable "event_pattern" {
  description = "(Optional) The event pattern described a JSON object. At least one of schedule_expression or event_pattern is required. See full documentation of Events and Event Patterns in EventBridge for details."
  type        = string
  default     = null
}

variable "description" {
  description = "(Optional) The description of the rule."
  type        = string
  default     = null
}

variable "role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) associated with the role that is used for target invocation."
  type        = string
  default     = null
}

variable "is_enabled" {
  description = "(Optional) Whether the rule should be enabled (defaults to true)."
  type        = string
  default     = null
}

variable "tags" {
  description = "(Optional) A map of tags to assign to the resource. If configured with a provider default_tags configuration block present, tags with matching keys will overwrite those defined at the provider-level."
  type        = map(string)
  default     = {}
}

# Event target
variable "target_id" {
  description = "(Optional) The unique target assignment ID. If missing, will generate a random, unique id."
  type        = string
  default     = null
}

variable "target_arn" {
  description = "(Required) The Amazon Resource Name (ARN) of the target."
  type        = string
  default     = null
}

variable "target_input" {
  description = "(Optional) Valid JSON text passed to the target. Conflicts with input_path and input_transformer."
  type        = string
  default     = null
}

variable "target_input_path" {
  description = "(Optional) The value of the JSONPath that is used for extracting part of the matched event when passing it to the target. Conflicts with input and input_transformer."
  type        = string
  default     = null
}

variable "target_role_arn" {
  description = "(Optional) The Amazon Resource Name (ARN) of the IAM role to be used for this target when the rule is triggered. Required if ecs_target is used or target in arn is EC2 instance, Kinesis data stream or Step Functions state machine."
  type        = string
  default     = null
}
