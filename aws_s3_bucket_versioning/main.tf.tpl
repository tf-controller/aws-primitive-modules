
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_versioning
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
    mfa = optional(string)
    versioning_configuration = optional(object({
        mfa_delete = optional(string)
        status = optional(string)
    }))
  })
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = var.values.bucket
  expected_bucket_owner = var.values.expected_bucket_owner
  mfa = var.values.mfa
  versioning_configuration = var.values.versioning_configuration
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


