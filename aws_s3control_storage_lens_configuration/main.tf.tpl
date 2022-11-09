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
    storage_lens_configuration = optional(list({
        exclude = optional(list({
            buckets = optional(set(string))
            regions = optional(set(string))
        }))
        include = optional(list({
            buckets = optional(set(string))
            regions = optional(set(string))
        }))
        account_level = optional(list({
            activity_metrics = optional(list({
                enabled = optional(bool)
            }))
            bucket_level = optional(list({
                activity_metrics = optional(list({
                    enabled = optional(bool)
                }))
                prefix_level = optional(list({
                    storage_metrics = optional(list({
                        enabled = optional(bool)
                        selection_criteria = optional(list({
                            delimiter = optional(string)
                            max_depth = optional(number)
                            min_storage_bytes_percentage = optional(number)
                        }))
                    }))
                }))
            }))
        }))
        aws_org = optional(list({
            arn = optional(string)
        }))
        data_export = optional(list({
            cloud_watch_metrics = optional(list({
                enabled = optional(bool)
            }))
            s3_bucket_destination = optional(list({
                output_schema_version = optional(string)
                prefix = optional(string)
                account_id = optional(string)
                arn = optional(string)
                encryption = optional(list({
                    sse_s3 = optional(list({
                    }))
                    sse_kms = optional(list({
                        key_id = optional(string)
                    }))
                }))
                format = optional(string)
            }))
        }))
        enabled = optional(bool)
    }))
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
  storage_lens_configuration = var.values.storage_lens_configuration
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

