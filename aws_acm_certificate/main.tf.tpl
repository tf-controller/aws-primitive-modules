
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acm_certificate
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
    certificate_authority_arn = optional(string)
    certificate_body = optional(string)
    certificate_chain = optional(string)
    domain_name = optional(string)
    options = optional(object({
        certificate_transparency_logging_preference = optional(string)
    }))
    private_key = optional(string)
    subject_alternative_names = optional(set(string))
    tags = optional(map(string))
    validation_method = optional(string)
  })
}

resource "aws_acm_certificate" "this" {
  certificate_authority_arn = var.values.certificate_authority_arn
  certificate_body = var.values.certificate_body
  certificate_chain = var.values.certificate_chain
  domain_name = var.values.domain_name
  options = var.values.options
  private_key = var.values.private_key
  subject_alternative_names = var.values.subject_alternative_names
  tags = var.values.tags
  validation_method = var.values.validation_method
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
    value = aws_acm_certificate.this.arn
}

output "certificate_authority_arn" {
    value = aws_acm_certificate.this.certificate_authority_arn
}

output "domain_name" {
    value = aws_acm_certificate.this.domain_name
}

output "status" {
    value = aws_acm_certificate.this.status
}

output "validation_method" {
    value = aws_acm_certificate.this.validation_method
}

