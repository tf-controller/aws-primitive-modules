
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_inventory
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
    destination = optional(object({
        bucket = optional(object({
            prefix = optional(string)
            encryption = optional(object({
                sse_kms = optional(object({
                    key_id = optional(string)
                }))
                sse_s3 = optional(object({
                }))
            }))
            format = optional(string)
            bucket_arn = optional(string)
            account_id = optional(string)
        }))
    }))
    enabled = optional(bool)
    filter = optional(object({
        prefix = optional(string)
    }))
    included_object_versions = optional(string)
    name = optional(string)
    optional_fields = optional(set(string))
    schedule = optional(object({
        frequency = optional(string)
    }))
  })
}

resource "aws_s3_bucket_inventory" "this" {
  bucket = var.values.bucket
  destination = var.values.destination
  enabled = var.values.enabled
  filter = var.values.filter
  included_object_versions = var.values.included_object_versions
  name = var.values.name
  optional_fields = var.values.optional_fields
  schedule = var.values.schedule
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

