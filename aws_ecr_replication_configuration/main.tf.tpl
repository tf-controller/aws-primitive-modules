######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecr_replication_configuration
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
    replication_configuration = optional(list(object({
        rule = optional(list(object({
            destination = optional(list(object({
                region = optional(string)
                registry_id = optional(string)
            })))
            repository_filter = optional(list(object({
                filter = optional(string)
                filter_type = optional(string)
            })))
        })))
    })))
  })
}

resource "aws_ecr_replication_configuration" "this" {

  {{- if $.Values.replication_configuration }}
  dynamic "replication_configuration" {
    for_each = var.values.replication_configuration[*]
    content {
      dynamic "rule" {
        for_each = replication_configuration.value.rule[*]
        content {
          dynamic "destination" {
            for_each = rule.value.destination[*]
            content {
              region = destination.value.region
              registry_id = destination.value.registry_id
            }
          }
          dynamic "repository_filter" {
            for_each = rule.value.repository_filter[*]
            content {
              filter = repository_filter.value.filter
              filter_type = repository_filter.value.filter_type
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


output "registry_id" {
    value = aws_ecr_replication_configuration.this.registry_id
}

