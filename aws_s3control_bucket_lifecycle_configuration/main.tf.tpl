######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3control_bucket_lifecycle_configuration
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.38.0"
    }
  }
}

variable "values" {
  type = object({
    bucket = optional(string)
    rule = optional(set(object({
        status = optional(string)
        abort_incomplete_multipart_upload = optional(list(object({
            days_after_initiation = optional(number)
        })))
        expiration = optional(list(object({
            date = optional(string)
            days = optional(number)
            expired_object_delete_marker = optional(bool)
        })))
        filter = optional(list(object({
            prefix = optional(string)
            tags = optional(map(string))
        })))
        id = optional(string)
    })))
  })
}

resource "aws_s3control_bucket_lifecycle_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.rule }}
  dynamic "rule" {
    for_each = var.values.rule[*]
    content {
      dynamic "abort_incomplete_multipart_upload" {
        for_each = rule.value.abort_incomplete_multipart_upload[*]
        content {
          days_after_initiation = abort_incomplete_multipart_upload.value.days_after_initiation
        }
      }
      dynamic "expiration" {
        for_each = rule.value.expiration[*]
        content {
          date = expiration.value.date
          days = expiration.value.days
          expired_object_delete_marker = expiration.value.expired_object_delete_marker
        }
      }
      dynamic "filter" {
        for_each = rule.value.filter[*]
        content {
          prefix = filter.value.prefix
          tags = filter.value.tags
        }
      }
      id = rule.value.id
      status = rule.value.status
    }
  }
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


