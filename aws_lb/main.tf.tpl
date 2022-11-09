######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb
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
    access_logs = optional(list({
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
    preserve_host_header = optional(bool)
    subnet_mapping = optional(set(any))
    tags = optional(map(string))
  })
}

resource "aws_lb" "this" {

  {{- if $.Values.access_logs }}
  access_logs = var.values.access_logs
  {{- end }}
  {{- if $.Values.customer_owned_ipv4_pool }}
  customer_owned_ipv4_pool = var.values.customer_owned_ipv4_pool
  {{- end }}
  {{- if $.Values.desync_mitigation_mode }}
  desync_mitigation_mode = var.values.desync_mitigation_mode
  {{- end }}
  {{- if $.Values.drop_invalid_header_fields }}
  drop_invalid_header_fields = var.values.drop_invalid_header_fields
  {{- end }}
  {{- if $.Values.enable_cross_zone_load_balancing }}
  enable_cross_zone_load_balancing = var.values.enable_cross_zone_load_balancing
  {{- end }}
  {{- if $.Values.enable_deletion_protection }}
  enable_deletion_protection = var.values.enable_deletion_protection
  {{- end }}
  {{- if $.Values.enable_http2 }}
  enable_http2 = var.values.enable_http2
  {{- end }}
  {{- if $.Values.enable_waf_fail_open }}
  enable_waf_fail_open = var.values.enable_waf_fail_open
  {{- end }}
  {{- if $.Values.idle_timeout }}
  idle_timeout = var.values.idle_timeout
  {{- end }}
  {{- if $.Values.internal }}
  internal = var.values.internal
  {{- end }}
  {{- if $.Values.load_balancer_type }}
  load_balancer_type = var.values.load_balancer_type
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.name_prefix }}
  name_prefix = var.values.name_prefix
  {{- end }}
  {{- if $.Values.preserve_host_header }}
  preserve_host_header = var.values.preserve_host_header
  {{- end }}
  {{- if $.Values.subnet_mapping }}
  subnet_mapping = var.values.subnet_mapping
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

