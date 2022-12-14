######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_docdb_cluster_parameter_group
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
    description = optional(string)
    family = optional(string)
    name = optional(string)
    name_prefix = optional(string)
    parameter = optional(set(object({
        name = optional(string)
        value = optional(string)
        apply_method = optional(string)
    })))
    tags = optional(map(string))
  })
}

resource "aws_docdb_cluster_parameter_group" "this" {

  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.family }}
  family = var.values.family
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.name_prefix }}
  name_prefix = var.values.name_prefix
  {{- end }}
  {{- if $.Values.parameter }}
  dynamic "parameter" {
    for_each = var.values.parameter[*]
    content {
      name = parameter.value.name
      value = parameter.value.value
      apply_method = parameter.value.apply_method
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


output "arn" {
    value = aws_docdb_cluster_parameter_group.this.arn
}

output "name" {
    value = aws_docdb_cluster_parameter_group.this.name
}

