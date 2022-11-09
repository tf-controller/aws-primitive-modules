######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acmpca_certificate_authority_certificate
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
    certificate = optional(string)
    certificate_authority_arn = optional(string)
    certificate_chain = optional(string)
  })
}

resource "aws_acmpca_certificate_authority_certificate" "this" {

  {{- if $.Values.certificate }}
  certificate = var.values.certificate
  {{- end }}
  {{- if $.Values.certificate_authority_arn }}
  certificate_authority_arn = var.values.certificate_authority_arn
  {{- end }}
  {{- if $.Values.certificate_chain }}
  certificate_chain = var.values.certificate_chain
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


output "certificate_authority_arn" {
    value = aws_acmpca_certificate_authority_certificate.this.certificate_authority_arn
}

