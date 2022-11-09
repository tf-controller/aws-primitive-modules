######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecr_repository
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
    encryption_configuration = optional(list({
        encryption_type = optional(string)
        kms_key = optional(string)
    }))
    force_delete = optional(bool)
    image_scanning_configuration = optional(list({
        scan_on_push = optional(bool)
    }))
    image_tag_mutability = optional(string)
    name = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ecr_repository" "this" {

  {{- if $.Values.encryption_configuration }}
  encryption_configuration = var.values.encryption_configuration
  {{- end }}
  {{- if $.Values.force_delete }}
  force_delete = var.values.force_delete
  {{- end }}
  {{- if $.Values.image_scanning_configuration }}
  image_scanning_configuration = var.values.image_scanning_configuration
  {{- end }}
  {{- if $.Values.image_tag_mutability }}
  image_tag_mutability = var.values.image_tag_mutability
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
    value = aws_ecr_repository.this.arn
}

output "registry_id" {
    value = aws_ecr_repository.this.registry_id
}

output "repository_url" {
    value = aws_ecr_repository.this.repository_url
}

