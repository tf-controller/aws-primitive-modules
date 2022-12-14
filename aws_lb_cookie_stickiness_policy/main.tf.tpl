######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_cookie_stickiness_policy
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
    cookie_expiration_period = optional(number)
    lb_port = optional(number)
    load_balancer = optional(string)
    name = optional(string)
  })
}

resource "aws_lb_cookie_stickiness_policy" "this" {

  {{- if $.Values.cookie_expiration_period }}
  cookie_expiration_period = var.values.cookie_expiration_period
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


