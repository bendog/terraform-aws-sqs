
variable "message_size" {
  default = 262144  // 256KiB
}

variable "environment" {
  default = "production"
}

variable "queue_name" {
  description = "define the name of the queue"
}

variable "visibility_timeout" {
  description = "The number of seconds before messages is visible on the queue again after it's been consumed but not deleted. default 30 seconds."
  default = 30
}

variable "message_retention" {
  description = "The number of seconds to hold onto message for. default 1 day."
  default = 86400
}

variable "delay" {
  description = "The number of seconds to wait before a message is visible on the queue after been first added. default is 0."
  default = 0  
}

variable "receive_wait_time" {
  description = "The number of seconds requests can wait for new messages to be recieved. default is 0."
  default = 0
}
