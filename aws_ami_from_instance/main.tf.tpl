######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ami_from_instance
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
    deprecation_time = optional(string)
    description = optional(string)
    ephemeral_block_device = optional(set(object({
        device_name = optional(string)
        virtual_name = optional(string)
    })))
    name = optional(string)
    snapshot_without_reboot = optional(bool)
    source_instance_id = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_ami_from_instance" "this" {

  {{- if $.Values.deprecation_time }}
  deprecation_time = var.values.deprecation_time
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.ephemeral_block_device }}
  dynamic "ephemeral_block_device" {
    for_each = var.values.ephemeral_block_device[*]
    content {
      virtual_name = ephemeral_block_device.value.virtual_name
      device_name = ephemeral_block_device.value.device_name
    }
  }
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.snapshot_without_reboot }}
  snapshot_without_reboot = var.values.snapshot_without_reboot
  {{- end }}
  {{- if $.Values.source_instance_id }}
  source_instance_id = var.values.source_instance_id
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
    value = aws_ami_from_instance.this.architecture
}

output "arn" {
    value = aws_ami_from_instance.this.arn
}

output "boot_mode" {
    value = aws_ami_from_instance.this.boot_mode
}

output "hypervisor" {
    value = aws_ami_from_instance.this.hypervisor
}

output "image_location" {
    value = aws_ami_from_instance.this.image_location
}

output "image_owner_alias" {
    value = aws_ami_from_instance.this.image_owner_alias
}

output "image_type" {
    value = aws_ami_from_instance.this.image_type
}

output "imds_support" {
    value = aws_ami_from_instance.this.imds_support
}

output "kernel_id" {
    value = aws_ami_from_instance.this.kernel_id
}

output "owner_id" {
    value = aws_ami_from_instance.this.owner_id
}

output "platform" {
    value = aws_ami_from_instance.this.platform
}

output "platform_details" {
    value = aws_ami_from_instance.this.platform_details
}

output "ramdisk_id" {
    value = aws_ami_from_instance.this.ramdisk_id
}

output "root_device_name" {
    value = aws_ami_from_instance.this.root_device_name
}

output "root_snapshot_id" {
    value = aws_ami_from_instance.this.root_snapshot_id
}

output "sriov_net_support" {
    value = aws_ami_from_instance.this.sriov_net_support
}

output "tpm_support" {
    value = aws_ami_from_instance.this.tpm_support
}

output "usage_operation" {
    value = aws_ami_from_instance.this.usage_operation
}

output "virtualization_type" {
    value = aws_ami_from_instance.this.virtualization_type
}

