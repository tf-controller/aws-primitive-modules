######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_traffic_mirror_filter_rule
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
    destination_cidr_block = optional(string)
    destination_port_range = optional(list(object({
        from_port = optional(number)
        to_port = optional(number)
    })))
    protocol = optional(number)
    rule_action = optional(string)
    rule_number = optional(number)
    source_cidr_block = optional(string)
    source_port_range = optional(list(object({
        to_port = optional(number)
        from_port = optional(number)
    })))
    traffic_direction = optional(string)
    traffic_mirror_filter_id = optional(string)
  })
}

resource "aws_ec2_traffic_mirror_filter_rule" "this" {

  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.destination_cidr_block }}
  destination_cidr_block = var.values.destination_cidr_block
  {{- end }}
  {{- if $.Values.destination_port_range }}
  dynamic "destination_port_range" {
    for_each = var.values.destination_port_range[*]
    content {
      from_port = destination_port_range.value.from_port
      to_port = destination_port_range.value.to_port
    }
  }
  {{- end }}
  {{- if $.Values.protocol }}
  protocol = var.values.protocol
  {{- end }}
  {{- if $.Values.rule_action }}
  rule_action = var.values.rule_action
  {{- end }}
  {{- if $.Values.rule_number }}
  rule_number = var.values.rule_number
  {{- end }}
  {{- if $.Values.source_cidr_block }}
  source_cidr_block = var.values.source_cidr_block
  {{- end }}
  {{- if $.Values.source_port_range }}
  dynamic "source_port_range" {
    for_each = var.values.source_port_range[*]
    content {
      from_port = source_port_range.value.from_port
      to_port = source_port_range.value.to_port
    }
  }
  {{- end }}
  {{- if $.Values.traffic_direction }}
  traffic_direction = var.values.traffic_direction
  {{- end }}
  {{- if $.Values.traffic_mirror_filter_id }}
  traffic_mirror_filter_id = var.values.traffic_mirror_filter_id
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
    value = aws_ec2_traffic_mirror_filter_rule.this.arn
}

