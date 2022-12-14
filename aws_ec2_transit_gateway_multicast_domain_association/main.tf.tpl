######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_transit_gateway_multicast_domain_association
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
    subnet_id = optional(string)
    transit_gateway_attachment_id = optional(string)
    transit_gateway_multicast_domain_id = optional(string)
  })
}

resource "aws_ec2_transit_gateway_multicast_domain_association" "this" {

  {{- if $.Values.subnet_id }}
  subnet_id = var.values.subnet_id
  {{- end }}
  {{- if $.Values.transit_gateway_attachment_id }}
  transit_gateway_attachment_id = var.values.transit_gateway_attachment_id
  {{- end }}
  {{- if $.Values.transit_gateway_multicast_domain_id }}
  transit_gateway_multicast_domain_id = var.values.transit_gateway_multicast_domain_id
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


