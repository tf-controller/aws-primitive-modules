######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ami_copy
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
    deprecation_time = optional(string)
    description = optional(string)
    destination_outpost_arn = optional(string)
    encrypted = optional(bool)
    ephemeral_block_device = optional(set(any))
    kms_key_id = optional(string)
    name = optional(string)
    source_ami_id = optional(string)
    source_ami_region = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ami_copy" "this" {

  {{- if $.Values.deprecation_time }}
  deprecation_time = var.values.deprecation_time
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.destination_outpost_arn }}
  destination_outpost_arn = var.values.destination_outpost_arn
  {{- end }}
  {{- if $.Values.encrypted }}
  encrypted = var.values.encrypted
  {{- end }}
  {{- if $.Values.ephemeral_block_device }}
  ephemeral_block_device = var.values.ephemeral_block_device
  {{- end }}
  {{- if $.Values.kms_key_id }}
  kms_key_id = var.values.kms_key_id
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.source_ami_id }}
  source_ami_id = var.values.source_ami_id
  {{- end }}
  {{- if $.Values.source_ami_region }}
  source_ami_region = var.values.source_ami_region
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


output "architecture" {
    value = aws_ami_copy.this.architecture
}

output "arn" {
    value = aws_ami_copy.this.arn
}

output "boot_mode" {
    value = aws_ami_copy.this.boot_mode
}

output "destination_outpost_arn" {
    value = aws_ami_copy.this.destination_outpost_arn
}

output "hypervisor" {
    value = aws_ami_copy.this.hypervisor
}

output "image_location" {
    value = aws_ami_copy.this.image_location
}

output "image_owner_alias" {
    value = aws_ami_copy.this.image_owner_alias
}

output "image_type" {
    value = aws_ami_copy.this.image_type
}

output "imds_support" {
    value = aws_ami_copy.this.imds_support
}

output "kernel_id" {
    value = aws_ami_copy.this.kernel_id
}

output "kms_key_id" {
    value = aws_ami_copy.this.kms_key_id
}

output "owner_id" {
    value = aws_ami_copy.this.owner_id
}

output "platform" {
    value = aws_ami_copy.this.platform
}

output "platform_details" {
    value = aws_ami_copy.this.platform_details
}

output "ramdisk_id" {
    value = aws_ami_copy.this.ramdisk_id
}

output "root_device_name" {
    value = aws_ami_copy.this.root_device_name
}

output "root_snapshot_id" {
    value = aws_ami_copy.this.root_snapshot_id
}

output "sriov_net_support" {
    value = aws_ami_copy.this.sriov_net_support
}

output "tpm_support" {
    value = aws_ami_copy.this.tpm_support
}

output "usage_operation" {
    value = aws_ami_copy.this.usage_operation
}

output "virtualization_type" {
    value = aws_ami_copy.this.virtualization_type
}

