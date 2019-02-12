
variable "message_size" {
  default = 262144  // 256KiB
}

variable "environment" {
  default = "production"
}

variable "queue_name" {
  description = "define the name of the queue"
}
