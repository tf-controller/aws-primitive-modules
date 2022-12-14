######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_identity_provider_config
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
    cluster_name = optional(string)
    oidc = optional(list(object({
        identity_provider_config_name = optional(string)
        issuer_url = optional(string)
        required_claims = optional(map(string))
        username_claim = optional(string)
        username_prefix = optional(string)
        client_id = optional(string)
        groups_claim = optional(string)
        groups_prefix = optional(string)
    })))
    tags = optional(map(string))
  })
}

resource "aws_eks_identity_provider_config" "this" {

  {{- if $.Values.cluster_name }}
  cluster_name = var.values.cluster_name
  {{- end }}
  {{- if $.Values.oidc }}
  dynamic "oidc" {
    for_each = var.values.oidc[*]
    content {
      groups_prefix = oidc.value.groups_prefix
      identity_provider_config_name = oidc.value.identity_provider_config_name
      issuer_url = oidc.value.issuer_url
      required_claims = oidc.value.required_claims
      username_claim = oidc.value.username_claim
      username_prefix = oidc.value.username_prefix
      client_id = oidc.value.client_id
      groups_claim = oidc.value.groups_claim
    }
  }
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
    value = aws_eks_identity_provider_config.this.arn
}

output "status" {
    value = aws_eks_identity_provider_config.this.status
}

