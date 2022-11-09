######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_client_vpn_network_association
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
    client_vpn_endpoint_id = optional(string)
    subnet_id = optional(string)
  })
}

resource "aws_ec2_client_vpn_network_association" "this" {

  {{- if $.Values.client_vpn_endpoint_id }}
  client_vpn_endpoint_id = var.values.client_vpn_endpoint_id
  {{- end }}
  {{- if $.Values.subnet_id }}
  subnet_id = var.values.subnet_id
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


output "association_id" {
    value = aws_ec2_client_vpn_network_association.this.association_id
}

output "status" {
    value = aws_ec2_client_vpn_network_association.this.status
}

output "vpc_id" {
    value = aws_ec2_client_vpn_network_association.this.vpc_id
}

