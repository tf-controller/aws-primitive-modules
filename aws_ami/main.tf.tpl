
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ami
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
    architecture = optional(string)
    boot_mode = optional(string)
    description = optional(string)
    ena_support = optional(bool)
    ephemeral_block_device = optional(set(any))
    image_location = optional(string)
    kernel_id = optional(string)
    name = optional(string)
    ramdisk_id = optional(string)
    root_device_name = optional(string)
    sriov_net_support = optional(string)
    tags = optional(map(string))
    virtualization_type = optional(string)
  })
}

resource "aws_ami" "this" {
  architecture = var.values.architecture
  boot_mode = var.values.boot_mode
  description = var.values.description
  ena_support = var.values.ena_support
  ephemeral_block_device = var.values.ephemeral_block_device
  image_location = var.values.image_location
  kernel_id = var.values.kernel_id
  name = var.values.name
  ramdisk_id = var.values.ramdisk_id
  root_device_name = var.values.root_device_name
  sriov_net_support = var.values.sriov_net_support
  tags = var.values.tags
  virtualization_type = var.values.virtualization_type
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
    value = aws_ami.this.arn
}

output "hypervisor" {
    value = aws_ami.this.hypervisor
}

output "image_location" {
    value = aws_ami.this.image_location
}

output "image_owner_alias" {
    value = aws_ami.this.image_owner_alias
}

output "image_type" {
    value = aws_ami.this.image_type
}

output "owner_id" {
    value = aws_ami.this.owner_id
}

output "platform" {
    value = aws_ami.this.platform
}

output "platform_details" {
    value = aws_ami.this.platform_details
}

output "root_snapshot_id" {
    value = aws_ami.this.root_snapshot_id
}

output "usage_operation" {
    value = aws_ami.this.usage_operation
}

