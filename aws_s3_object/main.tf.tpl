######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_object
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
    acl = optional(string)
    bucket = optional(string)
    cache_control = optional(string)
    content = optional(string)
    content_base64 = optional(string)
    content_disposition = optional(string)
    content_encoding = optional(string)
    content_language = optional(string)
    force_destroy = optional(bool)
    key = optional(string)
    metadata = optional(map(string))
    object_lock_legal_hold_status = optional(string)
    object_lock_mode = optional(string)
    object_lock_retain_until_date = optional(string)
    source = optional(string)
    source_hash = optional(string)
    tags = optional(map(string))
    website_redirect = optional(string)
  })
}

resource "aws_s3_object" "this" {

  {{- if $.Values.acl }}
  acl = var.values.acl
  {{- end }}
  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.cache_control }}
  cache_control = var.values.cache_control
  {{- end }}
  {{- if $.Values.content }}
  content = var.values.content
  {{- end }}
  {{- if $.Values.content_base64 }}
  content_base64 = var.values.content_base64
  {{- end }}
  {{- if $.Values.content_disposition }}
  content_disposition = var.values.content_disposition
  {{- end }}
  {{- if $.Values.content_encoding }}
  content_encoding = var.values.content_encoding
  {{- end }}
  {{- if $.Values.content_language }}
  content_language = var.values.content_language
  {{- end }}
  {{- if $.Values.force_destroy }}
  force_destroy = var.values.force_destroy
  {{- end }}
  {{- if $.Values.key }}
  key = var.values.key
  {{- end }}
  {{- if $.Values.metadata }}
  metadata = var.values.metadata
  {{- end }}
  {{- if $.Values.object_lock_legal_hold_status }}
  object_lock_legal_hold_status = var.values.object_lock_legal_hold_status
  {{- end }}
  {{- if $.Values.object_lock_mode }}
  object_lock_mode = var.values.object_lock_mode
  {{- end }}
  {{- if $.Values.object_lock_retain_until_date }}
  object_lock_retain_until_date = var.values.object_lock_retain_until_date
  {{- end }}
  {{- if $.Values.source }}
  source = var.values.source
  {{- end }}
  {{- if $.Values.source_hash }}
  source_hash = var.values.source_hash
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.website_redirect }}
  website_redirect = var.values.website_redirect
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


output "content_type" {
    value = aws_s3_object.this.content_type
}

output "etag" {
    value = aws_s3_object.this.etag
}

output "kms_key_id" {
    value = aws_s3_object.this.kms_key_id
}

output "server_side_encryption" {
    value = aws_s3_object.this.server_side_encryption
}

output "storage_class" {
    value = aws_s3_object.this.storage_class
}

output "version_id" {
    value = aws_s3_object.this.version_id
}

