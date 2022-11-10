######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_lifecycle_configuration
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
    expected_bucket_owner = optional(string)
    rule = optional(list(object({
        filter = optional(list(object({
            and = optional(list(object({
                object_size_greater_than = optional(number)
                object_size_less_than = optional(number)
                prefix = optional(string)
                tags = optional(map(string))
            })))
            object_size_greater_than = optional(string)
            object_size_less_than = optional(string)
            prefix = optional(string)
            tag = optional(list(object({
                key = optional(string)
                value = optional(string)
            })))
        })))
        noncurrent_version_expiration = optional(list(object({
            newer_noncurrent_versions = optional(string)
            noncurrent_days = optional(number)
        })))
        status = optional(string)
        abort_incomplete_multipart_upload = optional(list(object({
            days_after_initiation = optional(number)
        })))
        expiration = optional(list(object({
            date = optional(string)
            days = optional(number)
            expired_object_delete_marker = optional(bool)
        })))
        id = optional(string)
        noncurrent_version_transition = optional(set(object({
            newer_noncurrent_versions = optional(string)
            noncurrent_days = optional(number)
            storage_class = optional(string)
        })))
        prefix = optional(string)
        transition = optional(set(object({
            date = optional(string)
            days = optional(number)
            storage_class = optional(string)
        })))
    })))
  })
}

resource "aws_s3_bucket_lifecycle_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.expected_bucket_owner }}
  expected_bucket_owner = var.values.expected_bucket_owner
  {{- end }}
  {{- if $.Values.rule }}
  rule = var.values.rule
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


