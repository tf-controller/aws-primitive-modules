######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecs_capacity_provider
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
    auto_scaling_group_provider = optional(list(object({
        auto_scaling_group_arn = optional(string)
        managed_scaling = optional(list(object({
            status = optional(string)
            target_capacity = optional(number)
            instance_warmup_period = optional(number)
            maximum_scaling_step_size = optional(number)
            minimum_scaling_step_size = optional(number)
        })))
        managed_termination_protection = optional(string)
    })))
    name = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ecs_capacity_provider" "this" {

  {{- if $.Values.auto_scaling_group_provider }}
  auto_scaling_group_provider = var.values.auto_scaling_group_provider
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
    value = aws_ecs_capacity_provider.this.arn
}

