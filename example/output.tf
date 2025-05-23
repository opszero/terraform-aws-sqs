output "sqs_dlq" {
  value = module.sqs_queues.sqs_queue_arn
}

output "sqs_dlq_id" {
  value = module.sqs_queues.sqs_queue_id
}