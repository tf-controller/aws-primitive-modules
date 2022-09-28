
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_user_ssh_key
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
    encoding = optional(string)
    public_key = optional(string)
    username = optional(string)
  })
}

resource "aws_iam_user_ssh_key" "default_resource" {
  encoding = var.values.encoding
  public_key = var.values.public_key
  username = var.values.username
}
