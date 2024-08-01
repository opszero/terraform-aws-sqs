<!-- BEGIN_TF_DOCS -->

## 🚀 Pro Support from opsZero!

<a href="https://www.opszero.com"><img src="https://media.opszero.com/insights/brands/logo/2023/04/26/02/04/12/opsZero_logo.svg" width="300px"/></a>

[opsZero](https://www.opszero.com) provides Kubernetes support on any Cloud with a focus on AI and Compliance. We provide:

- Slack & Email support
- One on One Video Calls
- Implementation
- Troubleshooting

Please [schedule a call](https://calendly.com/opszero-llc/discovery) if you need support.
## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_redrive_policy"></a> [enable\_redrive\_policy](#input\_enable\_redrive\_policy) | n/a | `bool` | `false` | no |
| <a name="input_queues"></a> [queues](#input\_queues) | Map of queue names and their properties | `any` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | n/a | `any` | n/a | yes |
## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_metric_alarm.oldest_message_alarm_main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_metric_alarm) | resource |
| [aws_sqs_queue.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue) | resource |
| [aws_sqs_queue_policy.main_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue_policy) | resource |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sqs_queue_arn"></a> [sqs\_queue\_arn](#output\_sqs\_queue\_arn) | n/a |
<!-- END_TF_DOCS -->