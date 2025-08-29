terraform {
  backend "gcs" {
    bucket = var.bucket
    prefix = var.prefix
  }
}

variable "bucket" {
  description = "The name of the GCS bucket to store the Terraform state."
  type        = string
}

variable "prefix" {
  description = "The prefix within the GCS bucket for the Terraform state."
  type        = string
}