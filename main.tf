
resource "aws_sqs_queue" "deadletter_queue" {
  name                      = "${var.queue_name}-deadletter"
  max_message_size          = "${var.message_size}"
  message_retention_seconds = 1209600 // 14 days

  tags {
    Environment = "${var.environment}"
  }
}

resource "aws_sqs_queue" "queue" {
  name                        = "${var.queue_name}"
  visibility_timeout_seconds  = 30
  message_retention_seconds   = 86400
  max_message_size            = "${var.message_size}"
  delay_seconds               = 90
  receive_wait_time_seconds   = 10
  redrive_policy              = "{\"deadLetterTargetArn\":\"${aws_sqs_queue.deadletter_queue.arn}\",\"maxReceiveCount\":10}"
//  content_based_deduplication = true
//  fifo_queue                  = true

  tags {
    Environment = "${var.environment}"
  }
}
