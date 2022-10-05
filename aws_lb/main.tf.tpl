
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb
######################################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.33.0"
    }
  }
}

provider "aws" {
}

variable "values" {
  type = object({
    access_logs = optional(object({
        bucket = optional(string)
        prefix = optional(string)
        enabled = optional(bool)
    }))
    customer_owned_ipv4_pool = optional(string)
    desync_mitigation_mode = optional(string)
    drop_invalid_header_fields = optional(bool)
    enable_cross_zone_load_balancing = optional(bool)
    enable_deletion_protection = optional(bool)
    enable_http2 = optional(bool)
    enable_waf_fail_open = optional(bool)
    idle_timeout = optional(number)
    internal = optional(bool)
    load_balancer_type = optional(string)
    name = optional(string)
    name_prefix = optional(string)
    subnet_mapping = optional(set(any))
    tags = optional(map(string))
  })
}

resource "aws_lb" "this" {
  access_logs = var.values.access_logs
  customer_owned_ipv4_pool = var.values.customer_owned_ipv4_pool
  desync_mitigation_mode = var.values.desync_mitigation_mode
  drop_invalid_header_fields = var.values.drop_invalid_header_fields
  enable_cross_zone_load_balancing = var.values.enable_cross_zone_load_balancing
  enable_deletion_protection = var.values.enable_deletion_protection
  enable_http2 = var.values.enable_http2
  enable_waf_fail_open = var.values.enable_waf_fail_open
  idle_timeout = var.values.idle_timeout
  internal = var.values.internal
  load_balancer_type = var.values.load_balancer_type
  name = var.values.name
  name_prefix = var.values.name_prefix
  subnet_mapping = var.values.subnet_mapping
  tags = var.values.tags
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
    value = aws_lb.this.arn
}

output "dns_name" {
    value = aws_lb.this.dns_name
}

output "ip_address_type" {
    value = aws_lb.this.ip_address_type
}

output "name" {
    value = aws_lb.this.name
}

output "vpc_id" {
    value = aws_lb.this.vpc_id
}

output "zone_id" {
    value = aws_lb.this.zone_id
}

