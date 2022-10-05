
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_target_group
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    connection_termination = optional(bool)
    deregistration_delay = optional(string)
    lambda_multi_value_headers_enabled = optional(bool)
    name = optional(string)
    name_prefix = optional(string)
    port = optional(number)
    protocol = optional(string)
    proxy_protocol_v2 = optional(bool)
    slow_start = optional(number)
    tags = optional(map(string))
    target_type = optional(string)
    vpc_id = optional(string)
  })
}

resource "aws_lb_target_group" "this" {
  connection_termination = var.values.connection_termination
  deregistration_delay = var.values.deregistration_delay
  lambda_multi_value_headers_enabled = var.values.lambda_multi_value_headers_enabled
  name = var.values.name
  name_prefix = var.values.name_prefix
  port = var.values.port
  protocol = var.values.protocol
  proxy_protocol_v2 = var.values.proxy_protocol_v2
  slow_start = var.values.slow_start
  tags = var.values.tags
  target_type = var.values.target_type
  vpc_id = var.values.vpc_id
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
    value = aws_lb_target_group.this.arn
}

output "load_balancing_algorithm_type" {
    value = aws_lb_target_group.this.load_balancing_algorithm_type
}

output "name" {
    value = aws_lb_target_group.this.name
}

output "preserve_client_ip" {
    value = aws_lb_target_group.this.preserve_client_ip
}

output "protocol_version" {
    value = aws_lb_target_group.this.protocol_version
}
