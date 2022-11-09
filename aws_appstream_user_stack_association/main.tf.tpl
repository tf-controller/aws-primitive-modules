######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appstream_user_stack_association
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
    authentication_type = optional(string)
    send_email_notification = optional(bool)
    stack_name = optional(string)
    user_name = optional(string)
  })
}

resource "aws_appstream_user_stack_association" "this" {

  {{- if $.Values.authentication_type }}
  authentication_type = var.values.authentication_type
  {{- end }}
  {{- if $.Values.send_email_notification }}
  send_email_notification = var.values.send_email_notification
  {{- end }}
  {{- if $.Values.stack_name }}
  stack_name = var.values.stack_name
  {{- end }}
  {{- if $.Values.user_name }}
  user_name = var.values.user_name
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


