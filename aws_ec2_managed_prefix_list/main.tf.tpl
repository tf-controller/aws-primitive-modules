######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_managed_prefix_list
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
    address_family = optional(string)
    max_entries = optional(number)
    name = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ec2_managed_prefix_list" "this" {

  {{- if $.Values.address_family }}
  address_family = var.values.address_family
  {{- end }}
  {{- if $.Values.max_entries }}
  max_entries = var.values.max_entries
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
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
    value = aws_ec2_managed_prefix_list.this.arn
}

output "owner_id" {
    value = aws_ec2_managed_prefix_list.this.owner_id
}

output "version" {
    value = aws_ec2_managed_prefix_list.this.version
}

