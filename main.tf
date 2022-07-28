resource "aws_cloudwatch_event_rule" "this" {
  name                = var.name
  name_prefix         = var.name_prefix
  schedule_expression = var.schedule_expression
  event_bus_name      = var.event_bus_name
  event_pattern       = var.event_pattern
  description         = var.description
  role_arn            = var.role_arn
  is_enabled          = var.is_enabled
  tags                = var.tags
}

resource "aws_cloudwatch_event_target" "this" {
  count      = var.target_arn != null ? 1 : 0
  rule       = aws_cloudwatch_event_rule.this.name
  target_id  = var.target_id
  arn        = var.target_arn
  input      = var.target_input
  input_path = var.target_input_path
  role_arn   = var.target_role_arn
}
