######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appconfig_environment
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
    application_id = optional(string)
    description = optional(string)
    monitor = optional(set(object({
        alarm_arn = optional(string)
        alarm_role_arn = optional(string)
    })))
    name = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_appconfig_environment" "this" {

  {{- if $.Values.application_id }}
  application_id = var.values.application_id
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.monitor }}
  dynamic "monitor" {
    for_each = var.values.monitor
    content {
      alarm_arn = monitor.alarm_arn
      alarm_role_arn = monitor.alarm_role_arn
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
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


output "arn" {
    value = aws_appconfig_environment.this.arn
}

output "environment_id" {
    value = aws_appconfig_environment.this.environment_id
}

output "state" {
    value = aws_appconfig_environment.this.state
}

