######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_cors_configuration
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    bucket = optional(string)
    cors_rule = optional(set(object({
        allowed_headers = optional(set(string))
        allowed_methods = optional(set(string))
        allowed_origins = optional(set(string))
        expose_headers = optional(set(string))
        id = optional(string)
        max_age_seconds = optional(number)
    })))
    expected_bucket_owner = optional(string)
  })
}

resource "aws_s3_bucket_cors_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.cors_rule }}
  dynamic "cors_rule" {
    for_each = var.values.cors_rule
    content {
      allowed_headers = cors_rule.allowed_headers
      allowed_methods = cors_rule.allowed_methods
      allowed_origins = cors_rule.allowed_origins
      expose_headers = cors_rule.expose_headers
      id = cors_rule.id
      max_age_seconds = cors_rule.max_age_seconds
    }
  }
  {{- end }}
  {{- if $.Values.expected_bucket_owner }}
  expected_bucket_owner = var.values.expected_bucket_owner
  {{- end }}


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


