######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acmpca_certificate
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
    certificate_authority_arn = optional(string)
    certificate_signing_request = optional(string)
    signing_algorithm = optional(string)
    template_arn = optional(string)
    validity = optional(list(object({
        type = optional(string)
        value = optional(string)
    })))
  })
}

resource "aws_acmpca_certificate" "this" {

  {{- if $.Values.certificate_authority_arn }}
  certificate_authority_arn = var.values.certificate_authority_arn
  {{- end }}
  {{- if $.Values.certificate_signing_request }}
  certificate_signing_request = var.values.certificate_signing_request
  {{- end }}
  {{- if $.Values.signing_algorithm }}
  signing_algorithm = var.values.signing_algorithm
  {{- end }}
  {{- if $.Values.template_arn }}
  template_arn = var.values.template_arn
  {{- end }}
  {{- if $.Values.validity }}
  dynamic "validity" {
    for_each = var.values.validity[*]
    content {
      type = validity.value.type
      value = validity.value.value
    }
  }
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
    value = aws_acmpca_certificate.this.arn
}

output "certificate" {
    value = aws_acmpca_certificate.this.certificate
}

output "certificate_authority_arn" {
    value = aws_acmpca_certificate.this.certificate_authority_arn
}

output "certificate_chain" {
    value = aws_acmpca_certificate.this.certificate_chain
}

output "template_arn" {
    value = aws_acmpca_certificate.this.template_arn
}

