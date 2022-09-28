
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_access_key
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.32.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    pgp_key = optional(string)
    status = optional(string)
    user = optional(string)
  })
}

resource "aws_iam_access_key" "default_resource" {
  pgp_key = var.values.pgp_key
  status = var.values.status
  user = var.values.user
}
