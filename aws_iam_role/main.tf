
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_role
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
    assume_role_policy = optional(string)
    description = optional(string)
    force_detach_policies = optional(bool)
    max_session_duration = optional(number)
    name = optional(string)
    name_prefix = optional(string)
    path = optional(string)
    permissions_boundary = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_iam_role" "default_resource" {
  assume_role_policy = var.values.assume_role_policy
  description = var.values.description
  force_detach_policies = var.values.force_detach_policies
  max_session_duration = var.values.max_session_duration
  name = var.values.name
  name_prefix = var.values.name_prefix
  path = var.values.path
  permissions_boundary = var.values.permissions_boundary
  tags = var.values.tags
}
