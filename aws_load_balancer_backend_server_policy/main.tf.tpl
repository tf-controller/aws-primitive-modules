######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_load_balancer_backend_server_policy
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
    instance_port = optional(number)
    load_balancer_name = optional(string)
    policy_names = optional(set(string))
  })
}

resource "aws_load_balancer_backend_server_policy" "this" {

  {{- if $.Values.instance_port }}
  instance_port = var.values.instance_port
  {{- end }}
  {{- if $.Values.load_balancer_name }}
  load_balancer_name = var.values.load_balancer_name
  {{- end }}
  {{- if $.Values.policy_names }}
  policy_names = var.values.policy_names
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


