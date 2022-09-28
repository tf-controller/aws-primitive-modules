
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_policy_attachment
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
    groups = set(string)
    name = string
    policy_arn = string
    roles = set(string)
    users = set(string)
  })
}

resource "aws_iam_policy_attachment" "default_resource" {
  groups = var.values.groups
  name = var.values.name
  policy_arn = var.values.policy_arn
  roles = var.values.roles
  users = var.values.users
}