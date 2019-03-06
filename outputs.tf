
output "sqs_arn" {
  value = "${aws_sqs_queue.queue.arn}"
}

output "sqs_url" {
  value = "${aws_sqs_queue.queue.id}"
}

output "sqs_name" {
  value = "${aws_sqs_queue.queue.name}"
}

output "sqs_deadletter_arn" {
  value = "${aws_sqs_queue.deadletter_queue.arn}"
}

output "sqs_deadletter_url" {
  value = "${aws_sqs_queue.deadletter_queue.id}"
}

output "sqs_deadletter_name" {
  value = "${aws_sqs_queue.deadletter_queue.name}"
}
