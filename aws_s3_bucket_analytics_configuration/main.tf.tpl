######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_analytics_configuration
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
    filter = optional(list(object({
        tags = optional(map(string))
        prefix = optional(string)
    })))
    name = optional(string)
    storage_class_analysis = optional(list(object({
        data_export = optional(list(object({
            output_schema_version = optional(string)
            destination = optional(list(object({
                s3_bucket_destination = optional(list(object({
                    bucket_arn = optional(string)
                    bucket_account_id = optional(string)
                    format = optional(string)
                    prefix = optional(string)
                })))
            })))
        })))
    })))
  })
}

resource "aws_s3_bucket_analytics_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.filter }}
  dynamic "filter" {
    for_each = var.values.filter[*]
    content {
      prefix = filter.value.prefix
      tags = filter.value.tags
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.storage_class_analysis }}
  dynamic "storage_class_analysis" {
    for_each = var.values.storage_class_analysis[*]
    content {
      dynamic "data_export" {
        for_each = storage_class_analysis.value.data_export[*]
        content {
          output_schema_version = data_export.value.output_schema_version
          dynamic "destination" {
            for_each = data_export.value.destination[*]
            content {
              dynamic "s3_bucket_destination" {
                for_each = destination.value.s3_bucket_destination[*]
                content {
                  bucket_account_id = s3_bucket_destination.value.bucket_account_id
                  format = s3_bucket_destination.value.format
                  prefix = s3_bucket_destination.value.prefix
                  bucket_arn = s3_bucket_destination.value.bucket_arn
                }
              }
            }
          }
        }
      }
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


