######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ami
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
    architecture = optional(string)
    boot_mode = optional(string)
    deprecation_time = optional(string)
    description = optional(string)
    ena_support = optional(bool)
    ephemeral_block_device = optional(set(object({
        device_name = optional(string)
        virtual_name = optional(string)
    })))
    image_location = optional(string)
    imds_support = optional(string)
    kernel_id = optional(string)
    name = optional(string)
    ramdisk_id = optional(string)
    root_device_name = optional(string)
    sriov_net_support = optional(string)
    tags = optional(map(string))
    tpm_support = optional(string)
    virtualization_type = optional(string)
  })
}

resource "aws_ami" "this" {

  {{- if $.Values.architecture }}
  architecture = var.values.architecture
  {{- end }}
  {{- if $.Values.boot_mode }}
  boot_mode = var.values.boot_mode
  {{- end }}
  {{- if $.Values.deprecation_time }}
  deprecation_time = var.values.deprecation_time
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.ena_support }}
  ena_support = var.values.ena_support
  {{- end }}
  {{- if $.Values.ephemeral_block_device }}
  dynamic "ephemeral_block_device" {
    for_each = var.values.ephemeral_block_device[*]
    content {
      device_name = ephemeral_block_device.value.device_name
      virtual_name = ephemeral_block_device.value.virtual_name
    }
  }
  {{- end }}
  {{- if $.Values.image_location }}
  image_location = var.values.image_location
  {{- end }}
  {{- if $.Values.imds_support }}
  imds_support = var.values.imds_support
  {{- end }}
  {{- if $.Values.kernel_id }}
  kernel_id = var.values.kernel_id
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.ramdisk_id }}
  ramdisk_id = var.values.ramdisk_id
  {{- end }}
  {{- if $.Values.root_device_name }}
  root_device_name = var.values.root_device_name
  {{- end }}
  {{- if $.Values.sriov_net_support }}
  sriov_net_support = var.values.sriov_net_support
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.tpm_support }}
  tpm_support = var.values.tpm_support
  {{- end }}
  {{- if $.Values.virtualization_type }}
  virtualization_type = var.values.virtualization_type
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

