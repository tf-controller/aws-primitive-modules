######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appmesh_mesh
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
    name = optional(string)
    spec = optional(list({
        egress_filter = optional(list({
            type = optional(string)
        }))
    }))
    tags = optional(map(string))
  })
}

resource "aws_appmesh_mesh" "this" {

  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.spec }}
  spec = var.values.spec
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
    value = aws_appmesh_mesh.this.arn
}

output "created_date" {
    value = aws_appmesh_mesh.this.created_date
}

output "last_updated_date" {
    value = aws_appmesh_mesh.this.last_updated_date
}

output "mesh_owner" {
    value = aws_appmesh_mesh.this.mesh_owner
}

output "resource_owner" {
    value = aws_appmesh_mesh.this.resource_owner
}

