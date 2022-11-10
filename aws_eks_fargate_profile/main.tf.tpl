######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_eks_fargate_profile
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
    cluster_name = optional(string)
    fargate_profile_name = optional(string)
    pod_execution_role_arn = optional(string)
    selector = optional(set(object({
        labels = optional(map(string))
        namespace = optional(string)
    })))
    subnet_ids = optional(set(string))
    tags = optional(map(string))
  })
}

resource "aws_eks_fargate_profile" "this" {

  {{- if $.Values.cluster_name }}
  cluster_name = var.values.cluster_name
  {{- end }}
  {{- if $.Values.fargate_profile_name }}
  fargate_profile_name = var.values.fargate_profile_name
  {{- end }}
  {{- if $.Values.pod_execution_role_arn }}
  pod_execution_role_arn = var.values.pod_execution_role_arn
  {{- end }}
  {{- if $.Values.selector }}
  dynamic "selector" {
    for_each = var.values.selector
    content {
      labels = selector.labels
      namespace = selector.namespace
    }
  }
  {{- end }}
  {{- if $.Values.subnet_ids }}
  subnet_ids = var.values.subnet_ids
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
    value = aws_eks_fargate_profile.this.arn
}

output "pod_execution_role_arn" {
    value = aws_eks_fargate_profile.this.pod_execution_role_arn
}

output "status" {
    value = aws_eks_fargate_profile.this.status
}

