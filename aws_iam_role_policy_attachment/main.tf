
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_role_policy_attachment
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
    policy_arn = optional(string)
    role = optional(string)
  })
}

resource "aws_iam_role_policy_attachment" "default_resource" {
  policy_arn = var.values.policy_arn
  role = var.values.role
}
