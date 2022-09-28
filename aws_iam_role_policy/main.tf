
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_role_policy
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
    name = optional(string)
    name_prefix = optional(string)
    policy = optional(string)
    role = optional(string)
  })
}

resource "aws_iam_role_policy" "default_resource" {
  name = var.values.name
  name_prefix = var.values.name_prefix
  policy = var.values.policy
  role = var.values.role
}
