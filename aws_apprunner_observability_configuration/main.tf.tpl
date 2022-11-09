######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_apprunner_observability_configuration
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
    observability_configuration_name = optional(string)
    tags = optional(map(string))
    trace_configuration = optional(list({
        vendor = optional(string)
    }))
  })
}

resource "aws_apprunner_observability_configuration" "this" {

  {{- if $.Values.observability_configuration_name }}
  observability_configuration_name = var.values.observability_configuration_name
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.trace_configuration }}
  trace_configuration = var.values.trace_configuration
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
    value = aws_apprunner_observability_configuration.this.arn
}

output "observability_configuration_revision" {
    value = aws_apprunner_observability_configuration.this.observability_configuration_revision
}

output "status" {
    value = aws_apprunner_observability_configuration.this.status
}

