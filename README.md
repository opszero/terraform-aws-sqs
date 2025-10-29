# Terraform Aws sqs

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Example](#Example)
- [Author](#Author)
- [License](#license)
- [Inputs](#inputs)
- [Outputs](#outputs)

## Introduction
This Terraform module creates an AWS sqs_distribution Service (sqs_distribution) along with additional configuration options.
## Usage
To use this module, you can include it in your Terraform configuration. Here's an example of how to use it:

## Examples

## Example: sqs_queues
```hcl
module "sqs_queues" {
  source  = "git::https://github.com/opszero/terraform-aws-sqs.git?ref=v1.0.1"
  tags    = {
    Env = "Prod"
  }

  queues = {
    "queues-1" = {
      main_queue_retention_seconds   = "1209600"
      dlq_queue_retention_seconds    = "1209600"
      visibility_timeout_seconds     = "60"
      receive_wait_time_seconds      = "10"
      max_receive_count              = 5
      ##cloudwatch_metric_alarm
      cloudwatch_comparison_operator = "GreaterThanThreshold"
      evaluation_periods             = "1"
      cloudwatch_metric_name         = "ApproximateAgeOfOldestMessage"
      cloudwatch_namespace           = "AWS/SQS"
      cloudwatch_statistic           = "Maximum"
      cloudwatch_threshold           = 300
      cloudwatch_alarm_description   = "Alarm when the oldest message is older than 5 minutes"
      cloudwatch_actions_enabled     = true

      ##sns
      protocol               = "email"
      endpoint_auto_confirms = true
      raw_message_delivery   = true
      endpoint               = "example@gmail.com"

    }
  }
}
```

## Example
For detailed examples on how to use this module, please refer to the [Examples](https://github.com/opszero/terraform-aws-sqs/tree/main/example) directory within this repository.

## Author
Your Name Replace **MIT** and **Cypik** with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the **MIT** License - see the [LICENSE](https://github.com/opszero/terraform-aws-sqs/blob/main/LICENSE) file for details.

<!-- BEGIN_TF_DOCS -->

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 6.14.0 |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_redrive_policy"></a> [enable\_redrive\_policy](#input\_enable\_redrive\_policy) | n/a | `bool` | `false` | no |
| <a name="input_queues"></a> [queues](#input\_queues) | Map of queue names and their properties | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tflint-ignore: terraform\_typed\_variables | `any` | n/a | yes |
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.oldest_message_alarm_main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_sns_topic.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic) | resource |
| [aws_sns_topic_subscription.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription) | resource |
| [aws_sqs_queue.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.main_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue_arn"></a> [sqs\_queue\_arn](#output\_sqs\_queue\_arn) | n/a |
| <a name="output_sqs_queue_id"></a> [sqs\_queue\_id](#output\_sqs\_queue\_id) | n/a |
# 🚀 Built by opsZero!

<a href="https://opszero.com"><img src="https://opszero.com/img/common/opsZero-Logo-Large.webp" width="300px"/></a>

[opsZero](https://opszero.com) provides software and consulting for Cloud + AI. With our decade plus of experience scaling some of the world’s most innovative companies we have developed deep expertise in Kubernetes, DevOps, FinOps, and Compliance.

Our software and consulting solutions enable organizations to:

- migrate workloads to the Cloud
- setup compliance frameworks including SOC2, HIPAA, PCI-DSS, ITAR, FedRamp, CMMC, and more.
- FinOps solutions to reduce the cost of running Cloud workloads
- Kubernetes optimized for web scale and AI workloads
- finding underutilized Cloud resources
- setting up custom AI training and delivery
- building data integrations and scrapers
- modernizing onto modern ARM based processors

We do this with a high-touch support model where you:

- Get access to us on Slack, Microsoft Teams or Email
- Get 24/7 coverage of your infrastructure
- Get an accelerated migration to Kubernetes

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.

<br/><br/>

<div style="display: block">
  <img src="https://opszero.com/img/common/aws-advanced.png" alt="AWS Advanced Tier" width="150px" >
  <img src="https://opszero.com/img/common/aws-devops-competency.png" alt="AWS DevOps Competency" width="150px" >
  <img src="https://opszero.com/img/common/aws-eks.png" alt="AWS EKS Delivery" width="150px" >
  <img src="https://opszero.com/img/common/aws-public-sector.png" alt="AWS Public Sector" width="150px" >
</div>
<!-- END_TF_DOCS -->