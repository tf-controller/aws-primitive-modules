######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_target_group_attachment
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
    availability_zone = optional(string)
    port = optional(number)
    target_group_arn = optional(string)
    target_id = optional(string)
  })
}

resource "aws_lb_target_group_attachment" "this" {

  {{- if $.Values.availability_zone }}
  availability_zone = var.values.availability_zone
  {{- end }}
  {{- if $.Values.port }}
  port = var.values.port
  {{- end }}
  {{- if $.Values.target_group_arn }}
  target_group_arn = var.values.target_group_arn
  {{- end }}
  {{- if $.Values.target_id }}
  target_id = var.values.target_id
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


output "target_group_arn" {
    value = aws_lb_target_group_attachment.this.target_group_arn
}

