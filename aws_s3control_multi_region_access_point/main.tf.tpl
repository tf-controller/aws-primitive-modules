######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3control_multi_region_access_point
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
    account_id = optional(string)
    details = optional(list(string))
  })
}

resource "aws_s3control_multi_region_access_point" "this" {

  {{- if $.Values.account_id }}
  account_id = var.values.account_id
  {{- end }}
  {{- if $.Values.details }}
  dynamic "details" {
    for_each = var.values.details[*]
    content {
      name = details.value.name
      dynamic "public_access_block" {
        for_each = details.value.public_access_block[*]
        content {
          block_public_policy = public_access_block.value.block_public_policy
          ignore_public_acls = public_access_block.value.ignore_public_acls
          restrict_public_buckets = public_access_block.value.restrict_public_buckets
          block_public_acls = public_access_block.value.block_public_acls
        }
      }
      dynamic "region" {
        for_each = details.value.region[*]
        content {
          bucket = region.value.bucket
        }
      }
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


output "account_id" {
    value = aws_s3control_multi_region_access_point.this.account_id
}

output "alias" {
    value = aws_s3control_multi_region_access_point.this.alias
}

output "arn" {
    value = aws_s3control_multi_region_access_point.this.arn
}

output "domain_name" {
    value = aws_s3control_multi_region_access_point.this.domain_name
}

output "status" {
    value = aws_s3control_multi_region_access_point.this.status
}

