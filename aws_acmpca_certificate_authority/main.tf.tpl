######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_acmpca_certificate_authority
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
    certificate_authority_configuration = optional(list(object({
        key_algorithm = optional(string)
        signing_algorithm = optional(string)
        subject = optional(list(object({
            country = optional(string)
            distinguished_name_qualifier = optional(string)
            generation_qualifier = optional(string)
            given_name = optional(string)
            locality = optional(string)
            organization = optional(string)
            state = optional(string)
            common_name = optional(string)
            initials = optional(string)
            organizational_unit = optional(string)
            pseudonym = optional(string)
            surname = optional(string)
            title = optional(string)
        })))
    })))
    enabled = optional(bool)
    permanent_deletion_time_in_days = optional(number)
    revocation_configuration = optional(list(object({
        crl_configuration = optional(list(object({
            custom_cname = optional(string)
            enabled = optional(bool)
            expiration_in_days = optional(number)
            s3_bucket_name = optional(string)
            s3_object_acl = optional(string)
        })))
        ocsp_configuration = optional(list(object({
            enabled = optional(bool)
            ocsp_custom_cname = optional(string)
        })))
    })))
    tags = optional(map(string))
    type = optional(string)
  })
}

resource "aws_acmpca_certificate_authority" "this" {

  {{- if $.Values.certificate_authority_configuration }}
  dynamic "certificate_authority_configuration" {
    for_each = var.values.certificate_authority_configuration[*]
    content {
      dynamic "subject" {
        for_each = certificate_authority_configuration.value.subject[*]
        content {
          organization = subject.value.organization
          state = subject.value.state
          country = subject.value.country
          distinguished_name_qualifier = subject.value.distinguished_name_qualifier
          generation_qualifier = subject.value.generation_qualifier
          given_name = subject.value.given_name
          locality = subject.value.locality
          title = subject.value.title
          common_name = subject.value.common_name
          initials = subject.value.initials
          organizational_unit = subject.value.organizational_unit
          pseudonym = subject.value.pseudonym
          surname = subject.value.surname
        }
      }
      key_algorithm = certificate_authority_configuration.value.key_algorithm
      signing_algorithm = certificate_authority_configuration.value.signing_algorithm
    }
  }
  {{- end }}
  {{- if $.Values.enabled }}
  enabled = var.values.enabled
  {{- end }}
  {{- if $.Values.permanent_deletion_time_in_days }}
  permanent_deletion_time_in_days = var.values.permanent_deletion_time_in_days
  {{- end }}
  {{- if $.Values.revocation_configuration }}
  dynamic "revocation_configuration" {
    for_each = var.values.revocation_configuration[*]
    content {
      dynamic "crl_configuration" {
        for_each = revocation_configuration.value.crl_configuration[*]
        content {
          custom_cname = crl_configuration.value.custom_cname
          enabled = crl_configuration.value.enabled
          expiration_in_days = crl_configuration.value.expiration_in_days
          s3_bucket_name = crl_configuration.value.s3_bucket_name
          s3_object_acl = crl_configuration.value.s3_object_acl
        }
      }
      dynamic "ocsp_configuration" {
        for_each = revocation_configuration.value.ocsp_configuration[*]
        content {
          enabled = ocsp_configuration.value.enabled
          ocsp_custom_cname = ocsp_configuration.value.ocsp_custom_cname
        }
      }
    }
  }
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.type }}
  type = var.values.type
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
    value = aws_acmpca_certificate_authority.this.arn
}

output "certificate" {
    value = aws_acmpca_certificate_authority.this.certificate
}

output "certificate_chain" {
    value = aws_acmpca_certificate_authority.this.certificate_chain
}

output "certificate_signing_request" {
    value = aws_acmpca_certificate_authority.this.certificate_signing_request
}

output "not_after" {
    value = aws_acmpca_certificate_authority.this.not_after
}

output "not_before" {
    value = aws_acmpca_certificate_authority.this.not_before
}

output "serial" {
    value = aws_acmpca_certificate_authority.this.serial
}

output "status" {
    value = aws_acmpca_certificate_authority.this.status
}

output "usage_mode" {
    value = aws_acmpca_certificate_authority.this.usage_mode
}

