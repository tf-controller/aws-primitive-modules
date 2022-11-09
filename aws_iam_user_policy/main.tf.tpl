######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_user_policy
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
    name = optional(string)
    name_prefix = optional(string)
    policy = optional(string)
    user = optional(string)
  })
}

resource "aws_iam_user_policy" "this" {

  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.name_prefix }}
  name_prefix = var.values.name_prefix
  {{- end }}
  {{- if $.Values.policy }}
  policy = var.values.policy
  {{- end }}
  {{- if $.Values.user }}
  user = var.values.user
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


output "name" {
    value = aws_iam_user_policy.this.name
}

