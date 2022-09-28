
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_policy
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
    description = optional(string)
    name = optional(string)
    name_prefix = optional(string)
    path = optional(string)
    policy = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_iam_policy" "default_resource" {
  description = var.values.description
  name = var.values.name
  name_prefix = var.values.name_prefix
  path = var.values.path
  policy = var.values.policy
  tags = var.values.tags
}
