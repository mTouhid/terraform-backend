provider "aws" {

}

module "tf_backend_label" {
  source       = "./modules/label"
  service_name = var.service_name
}

resource "aws_s3_bucket" "this" {
  bucket        = var.aws_s3_bucket_name
  acl           = "private"
  force_destroy = true

  tags = module.tf_backend_label.tags
}

resource "aws_dynamodb_table" "this" {
  name           = var.aws_dynamodb_table_name
  read_capacity  = 20
  write_capacity = 20
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
