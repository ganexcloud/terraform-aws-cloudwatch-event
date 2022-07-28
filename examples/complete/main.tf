provider "aws" {
  region = "us-east-1"
}

module "lambda_function" {
  source        = "terraform-aws-modules/lambda/aws"
  version       = "3.2.0"
  publish       = true
  function_name = "lambda-simple"
  handler       = "index.lambda_handler"
  runtime       = "python3.8"
}

module "cloudwatch_event" {
  source              = "../../"
  name                = "test-event"
  schedule_expression = "cron(0/5 * * * ? *)"
  target_arn          = module.lambda_function.lambda_function_arn
}
