######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_apprunner_vpc_ingress_connection
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
    ingress_vpc_configuration = optional(list({
        vpc_id = optional(string)
        vpc_endpoint_id = optional(string)
    }))
    name = optional(string)
    service_arn = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_apprunner_vpc_ingress_connection" "this" {

  {{- if $.Values.ingress_vpc_configuration }}
  ingress_vpc_configuration = var.values.ingress_vpc_configuration
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.service_arn }}
  service_arn = var.values.service_arn
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
    value = aws_apprunner_vpc_ingress_connection.this.arn
}

output "domain_name" {
    value = aws_apprunner_vpc_ingress_connection.this.domain_name
}

output "service_arn" {
    value = aws_apprunner_vpc_ingress_connection.this.service_arn
}

output "status" {
    value = aws_apprunner_vpc_ingress_connection.this.status
}

