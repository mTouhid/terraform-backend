variable "programme_namespace" {
  type    = string
  default = "staff-device"
}

variable "service_name" {
  type = string
}

variable "aws_s3_bucket_name" {
  type = string
}

variable "aws_dynamodb_table_name" {
  type = string
}
