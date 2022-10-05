
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appconfig_deployment_strategy
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
    deployment_duration_in_minutes = optional(number)
    description = optional(string)
    final_bake_time_in_minutes = optional(number)
    growth_factor = optional(number)
    growth_type = optional(string)
    name = optional(string)
    replicate_to = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_appconfig_deployment_strategy" "this" {
  deployment_duration_in_minutes = var.values.deployment_duration_in_minutes
  description = var.values.description
  final_bake_time_in_minutes = var.values.final_bake_time_in_minutes
  growth_factor = var.values.growth_factor
  growth_type = var.values.growth_type
  name = var.values.name
  replicate_to = var.values.replicate_to
  tags = var.values.tags
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
    value = aws_appconfig_deployment_strategy.this.arn
}

