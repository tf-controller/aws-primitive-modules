
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_logging
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    bucket = optional(string)
    expected_bucket_owner = optional(string)
    target_bucket = optional(string)
    target_grant = optional(set(any))
    target_prefix = optional(string)
  })
}

resource "aws_s3_bucket_logging" "this" {
  bucket = var.values.bucket
  expected_bucket_owner = var.values.expected_bucket_owner
  target_bucket = var.values.target_bucket
  target_grant = var.values.target_grant
  target_prefix = var.values.target_prefix
  {{- if $.Values.count }}
  count = {{ $.Values.count }}
  {{- end }}

  {{- if $.Values.lifecycle }}
  lifecycle {
    {{- if $.Values.lifecycle.create_before_destroy }}
    create_before_destroy = {{ $.Values.lifecycle.create_before_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    prevent_destroy = {{ $.Values.lifecycle.prevent_destroy }}
    {{- end }}
    {{- if $.Values.lifecycle.ignore_changes }}
    ignore_changes = {{ $.Values.lifecycle.ignore_changes }}
    {{- end }}
  }
  {{- end }}
}


