######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_replication_configuration
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
    role = optional(string)
    rule = optional(list(object({
        filter = optional(list(object({
            and = optional(list(object({
                prefix = optional(string)
                tags = optional(map(string))
            })))
            prefix = optional(string)
            tag = optional(list(object({
                key = optional(string)
                value = optional(string)
            })))
        })))
        prefix = optional(string)
        priority = optional(number)
        destination = optional(list(object({
            metrics = optional(list(object({
                event_threshold = optional(list(object({
                    minutes = optional(number)
                })))
                status = optional(string)
            })))
            replication_time = optional(list(object({
                status = optional(string)
                time = optional(list(object({
                    minutes = optional(number)
                })))
            })))
            storage_class = optional(string)
            access_control_translation = optional(list(object({
                owner = optional(string)
            })))
            account = optional(string)
            bucket = optional(string)
            encryption_configuration = optional(list(object({
                replica_kms_key_id = optional(string)
            })))
        })))
        existing_object_replication = optional(list(object({
            status = optional(string)
        })))
        source_selection_criteria = optional(list(object({
            replica_modifications = optional(list(object({
                status = optional(string)
            })))
            sse_kms_encrypted_objects = optional(list(object({
                status = optional(string)
            })))
        })))
        status = optional(string)
        delete_marker_replication = optional(list(object({
            status = optional(string)
        })))
        id = optional(string)
    })))
    token = optional(string)
  })
}

resource "aws_s3_bucket_replication_configuration" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.role }}
  role = var.values.role
  {{- end }}
  {{- if $.Values.rule }}
  dynamic "rule" {
    for_each = var.values.rule[*]
    content {
      dynamic "destination" {
        for_each = rule.value.destination[*]
        content {
          dynamic "access_control_translation" {
            for_each = destination.value.access_control_translation[*]
            content {
              owner = access_control_translation.value.owner
            }
          }
          account = destination.value.account
          bucket = destination.value.bucket
          dynamic "encryption_configuration" {
            for_each = destination.value.encryption_configuration[*]
            content {
              replica_kms_key_id = encryption_configuration.value.replica_kms_key_id
            }
          }
          dynamic "metrics" {
            for_each = destination.value.metrics[*]
            content {
              dynamic "event_threshold" {
                for_each = metrics.value.event_threshold[*]
                content {
                  minutes = event_threshold.value.minutes
                }
              }
              status = metrics.value.status
            }
          }
          dynamic "replication_time" {
            for_each = destination.value.replication_time[*]
            content {
              status = replication_time.value.status
              dynamic "time" {
                for_each = replication_time.value.time[*]
                content {
                  minutes = time.value.minutes
                }
              }
            }
          }
          storage_class = destination.value.storage_class
        }
      }
      dynamic "existing_object_replication" {
        for_each = rule.value.existing_object_replication[*]
        content {
          status = existing_object_replication.value.status
        }
      }
      dynamic "filter" {
        for_each = rule.value.filter[*]
        content {
          dynamic "and" {
            for_each = filter.value.and[*]
            content {
              prefix = and.value.prefix
              tags = and.value.tags
            }
          }
          prefix = filter.value.prefix
          dynamic "tag" {
            for_each = filter.value.tag[*]
            content {
              key = tag.value.key
              value = tag.value.value
            }
          }
        }
      }
      prefix = rule.value.prefix
      priority = rule.value.priority
      dynamic "delete_marker_replication" {
        for_each = rule.value.delete_marker_replication[*]
        content {
          status = delete_marker_replication.value.status
        }
      }
      id = rule.value.id
      dynamic "source_selection_criteria" {
        for_each = rule.value.source_selection_criteria[*]
        content {
          dynamic "replica_modifications" {
            for_each = source_selection_criteria.value.replica_modifications[*]
            content {
              status = replica_modifications.value.status
            }
          }
          dynamic "sse_kms_encrypted_objects" {
            for_each = source_selection_criteria.value.sse_kms_encrypted_objects[*]
            content {
              status = sse_kms_encrypted_objects.value.status
            }
          }
        }
      }
      status = rule.value.status
    }
  }
  {{- end }}
  {{- if $.Values.token }}
  token = var.values.token
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


