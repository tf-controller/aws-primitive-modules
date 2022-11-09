######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appautoscaling_target
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
    max_capacity = optional(number)
    min_capacity = optional(number)
    resource_id = optional(string)
    scalable_dimension = optional(string)
    service_namespace = optional(string)
  })
}

resource "aws_appautoscaling_target" "this" {

  {{- if $.Values.max_capacity }}
  max_capacity = var.values.max_capacity
  {{- end }}
  {{- if $.Values.min_capacity }}
  min_capacity = var.values.min_capacity
  {{- end }}
  {{- if $.Values.resource_id }}
  resource_id = var.values.resource_id
  {{- end }}
  {{- if $.Values.scalable_dimension }}
  scalable_dimension = var.values.scalable_dimension
  {{- end }}
  {{- if $.Values.service_namespace }}
  service_namespace = var.values.service_namespace
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


output "role_arn" {
    value = aws_appautoscaling_target.this.role_arn
}

