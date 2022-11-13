######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3control_storage_lens_configuration
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
    account_id = optional(string)
    config_id = optional(string)
    storage_lens_configuration = optional(list(object({
        account_level = optional(list(object({
            activity_metrics = optional(list(object({
                enabled = optional(bool)
            })))
            bucket_level = optional(list(object({
                activity_metrics = optional(list(object({
                    enabled = optional(bool)
                })))
                prefix_level = optional(list(object({
                    storage_metrics = optional(list(object({
                        enabled = optional(bool)
                        selection_criteria = optional(list(object({
                            delimiter = optional(string)
                            max_depth = optional(number)
                            min_storage_bytes_percentage = optional(number)
                        })))
                    })))
                })))
            })))
        })))
        aws_org = optional(list(object({
            arn = optional(string)
        })))
        data_export = optional(list(object({
            cloud_watch_metrics = optional(list(object({
                enabled = optional(bool)
            })))
            s3_bucket_destination = optional(list(object({
                account_id = optional(string)
                arn = optional(string)
                encryption = optional(list(object({
                    sse_kms = optional(list(object({
                        key_id = optional(string)
                    })))
                    sse_s3 = optional(list(object({
                    })))
                })))
                format = optional(string)
                output_schema_version = optional(string)
                prefix = optional(string)
            })))
        })))
        enabled = optional(bool)
        exclude = optional(list(object({
            buckets = optional(set(string))
            regions = optional(set(string))
        })))
        include = optional(list(object({
            buckets = optional(set(string))
            regions = optional(set(string))
        })))
    })))
    tags = optional(map(string))
  })
}

resource "aws_s3control_storage_lens_configuration" "this" {

  {{- if $.Values.account_id }}
  account_id = var.values.account_id
  {{- end }}
  {{- if $.Values.config_id }}
  config_id = var.values.config_id
  {{- end }}
  {{- if $.Values.storage_lens_configuration }}
  dynamic "storage_lens_configuration" {
    for_each = var.values.storage_lens_configuration[*]
    content {
      dynamic "account_level" {
        for_each = storage_lens_configuration.value.account_level[*]
        content {
          dynamic "activity_metrics" {
            for_each = account_level.value.activity_metrics[*]
            content {
              enabled = activity_metrics.value.enabled
            }
          }
          dynamic "bucket_level" {
            for_each = account_level.value.bucket_level[*]
            content {
              dynamic "activity_metrics" {
                for_each = bucket_level.value.activity_metrics[*]
                content {
                  enabled = activity_metrics.value.enabled
                }
              }
              dynamic "prefix_level" {
                for_each = bucket_level.value.prefix_level[*]
                content {
                  dynamic "storage_metrics" {
                    for_each = prefix_level.value.storage_metrics[*]
                    content {
                      enabled = storage_metrics.value.enabled
                      dynamic "selection_criteria" {
                        for_each = storage_metrics.value.selection_criteria[*]
                        content {
                          delimiter = selection_criteria.value.delimiter
                          max_depth = selection_criteria.value.max_depth
                          min_storage_bytes_percentage = selection_criteria.value.min_storage_bytes_percentage
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
      dynamic "aws_org" {
        for_each = storage_lens_configuration.value.aws_org[*]
        content {
          arn = aws_org.value.arn
        }
      }
      dynamic "data_export" {
        for_each = storage_lens_configuration.value.data_export[*]
        content {
          dynamic "cloud_watch_metrics" {
            for_each = data_export.value.cloud_watch_metrics[*]
            content {
              enabled = cloud_watch_metrics.value.enabled
            }
          }
          dynamic "s3_bucket_destination" {
            for_each = data_export.value.s3_bucket_destination[*]
            content {
              account_id = s3_bucket_destination.value.account_id
              arn = s3_bucket_destination.value.arn
              dynamic "encryption" {
                for_each = s3_bucket_destination.value.encryption[*]
                content {
                  dynamic "sse_kms" {
                    for_each = encryption.value.sse_kms[*]
                    content {
                      key_id = sse_kms.value.key_id
                    }
                  }
                  dynamic "sse_s3" {
                    for_each = encryption.value.sse_s3[*]
                    content {
                    }
                  }
                }
              }
              format = s3_bucket_destination.value.format
              output_schema_version = s3_bucket_destination.value.output_schema_version
              prefix = s3_bucket_destination.value.prefix
            }
          }
        }
      }
      enabled = storage_lens_configuration.value.enabled
      dynamic "exclude" {
        for_each = storage_lens_configuration.value.exclude[*]
        content {
          buckets = exclude.value.buckets
          regions = exclude.value.regions
        }
      }
      dynamic "include" {
        for_each = storage_lens_configuration.value.include[*]
        content {
          regions = include.value.regions
          buckets = include.value.buckets
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
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


output "account_id" {
    value = aws_s3control_storage_lens_configuration.this.account_id
}

output "arn" {
    value = aws_s3control_storage_lens_configuration.this.arn
}

