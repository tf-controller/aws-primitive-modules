######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_traffic_mirror_session
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
    network_interface_id = optional(string)
    packet_length = optional(number)
    session_number = optional(number)
    tags = optional(map(string))
    traffic_mirror_filter_id = optional(string)
    traffic_mirror_target_id = optional(string)
  })
}

resource "aws_ec2_traffic_mirror_session" "this" {

  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.network_interface_id }}
  network_interface_id = var.values.network_interface_id
  {{- end }}
  {{- if $.Values.packet_length }}
  packet_length = var.values.packet_length
  {{- end }}
  {{- if $.Values.session_number }}
  session_number = var.values.session_number
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.traffic_mirror_filter_id }}
  traffic_mirror_filter_id = var.values.traffic_mirror_filter_id
  {{- end }}
  {{- if $.Values.traffic_mirror_target_id }}
  traffic_mirror_target_id = var.values.traffic_mirror_target_id
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
    value = aws_ec2_traffic_mirror_session.this.arn
}

output "owner_id" {
    value = aws_ec2_traffic_mirror_session.this.owner_id
}

output "virtual_network_id" {
    value = aws_ec2_traffic_mirror_session.this.virtual_network_id
}

