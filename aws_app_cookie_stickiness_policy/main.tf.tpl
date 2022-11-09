######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_app_cookie_stickiness_policy
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
    cookie_name = optional(string)
    lb_port = optional(number)
    load_balancer = optional(string)
    name = optional(string)
  })
}

resource "aws_app_cookie_stickiness_policy" "this" {

  {{- if $.Values.cookie_name }}
  cookie_name = var.values.cookie_name
  {{- end }}
  {{- if $.Values.lb_port }}
  lb_port = var.values.lb_port
  {{- end }}
  {{- if $.Values.load_balancer }}
  load_balancer = var.values.load_balancer
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
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


