######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_transit_gateway_route_table
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
    tags = optional(map(string))
    transit_gateway_id = optional(string)
  })
}

resource "aws_ec2_transit_gateway_route_table" "this" {

  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.transit_gateway_id }}
  transit_gateway_id = var.values.transit_gateway_id
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
    value = aws_ec2_transit_gateway_route_table.this.arn
}

