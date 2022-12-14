######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_host
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
    auto_placement = optional(string)
    availability_zone = optional(string)
    host_recovery = optional(string)
    instance_family = optional(string)
    instance_type = optional(string)
    outpost_arn = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ec2_host" "this" {

  {{- if $.Values.auto_placement }}
  auto_placement = var.values.auto_placement
  {{- end }}
  {{- if $.Values.availability_zone }}
  availability_zone = var.values.availability_zone
  {{- end }}
  {{- if $.Values.host_recovery }}
  host_recovery = var.values.host_recovery
  {{- end }}
  {{- if $.Values.instance_family }}
  instance_family = var.values.instance_family
  {{- end }}
  {{- if $.Values.instance_type }}
  instance_type = var.values.instance_type
  {{- end }}
  {{- if $.Values.outpost_arn }}
  outpost_arn = var.values.outpost_arn
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
    value = aws_ec2_host.this.arn
}

output "outpost_arn" {
    value = aws_ec2_host.this.outpost_arn
}

output "owner_id" {
    value = aws_ec2_host.this.owner_id
}

