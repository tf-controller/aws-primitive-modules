######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_ownership_controls
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
    bucket = optional(string)
    rule = optional(list(object({
        object_ownership = optional(string)
    })))
  })
}

resource "aws_s3_bucket_ownership_controls" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.rule }}
  dynamic "rule" {
    for_each = var.values.rule[*]
    content {
      object_ownership = rule.value.object_ownership
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


