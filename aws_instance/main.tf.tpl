######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_instance
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
    ami = optional(string)
    associate_public_ip_address = optional(bool)
    availability_zone = optional(string)
    cpu_core_count = optional(number)
    cpu_threads_per_core = optional(number)
    credit_specification = optional(list(object({
        cpu_credits = optional(string)
    })))
    ebs_optimized = optional(bool)
    ephemeral_block_device = optional(set(object({
        device_name = optional(string)
        no_device = optional(bool)
        virtual_name = optional(string)
    })))
    get_password_data = optional(bool)
    hibernation = optional(bool)
    host_id = optional(string)
    iam_instance_profile = optional(string)
    ipv6_address_count = optional(number)
    ipv6_addresses = optional(list(string))
    key_name = optional(string)
    launch_template = optional(list(string))
    placement_group = optional(string)
    placement_partition_number = optional(number)
    private_dns_name_options = optional(list(object({
        enable_resource_name_dns_aaaa_record = optional(bool)
        enable_resource_name_dns_a_record = optional(bool)
        hostname_type = optional(string)
    })))
    private_ip = optional(string)
    security_groups = optional(set(string))
    source_dest_check = optional(bool)
    subnet_id = optional(string)
    tags = optional(map(string))
    tenancy = optional(string)
    user_data_replace_on_change = optional(bool)
    volume_tags = optional(map(string))
  })
}

resource "aws_instance" "this" {

  {{- if $.Values.ami }}
  ami = var.values.ami
  {{- end }}
  {{- if $.Values.associate_public_ip_address }}
  associate_public_ip_address = var.values.associate_public_ip_address
  {{- end }}
  {{- if $.Values.availability_zone }}
  availability_zone = var.values.availability_zone
  {{- end }}
  {{- if $.Values.cpu_core_count }}
  cpu_core_count = var.values.cpu_core_count
  {{- end }}
  {{- if $.Values.cpu_threads_per_core }}
  cpu_threads_per_core = var.values.cpu_threads_per_core
  {{- end }}
  {{- if $.Values.credit_specification }}
  dynamic "credit_specification" {
    for_each = var.values.credit_specification[*]
    content {
      cpu_credits = credit_specification.value.cpu_credits
    }
  }
  {{- end }}
  {{- if $.Values.ebs_optimized }}
  ebs_optimized = var.values.ebs_optimized
  {{- end }}
  {{- if $.Values.ephemeral_block_device }}
  dynamic "ephemeral_block_device" {
    for_each = var.values.ephemeral_block_device[*]
    content {
      no_device = ephemeral_block_device.value.no_device
      virtual_name = ephemeral_block_device.value.virtual_name
      device_name = ephemeral_block_device.value.device_name
    }
  }
  {{- end }}
  {{- if $.Values.get_password_data }}
  get_password_data = var.values.get_password_data
  {{- end }}
  {{- if $.Values.hibernation }}
  hibernation = var.values.hibernation
  {{- end }}
  {{- if $.Values.host_id }}
  host_id = var.values.host_id
  {{- end }}
  {{- if $.Values.iam_instance_profile }}
  iam_instance_profile = var.values.iam_instance_profile
  {{- end }}
  {{- if $.Values.ipv6_address_count }}
  ipv6_address_count = var.values.ipv6_address_count
  {{- end }}
  {{- if $.Values.ipv6_addresses }}
  ipv6_addresses = var.values.ipv6_addresses
  {{- end }}
  {{- if $.Values.key_name }}
  key_name = var.values.key_name
  {{- end }}
  {{- if $.Values.launch_template }}
  dynamic "launch_template" {
    for_each = var.values.launch_template[*]
    content {
      id = launch_template.value.id
      name = launch_template.value.name
      version = launch_template.value.version
    }
  }
  {{- end }}
  {{- if $.Values.placement_group }}
  placement_group = var.values.placement_group
  {{- end }}
  {{- if $.Values.placement_partition_number }}
  placement_partition_number = var.values.placement_partition_number
  {{- end }}
  {{- if $.Values.private_dns_name_options }}
  dynamic "private_dns_name_options" {
    for_each = var.values.private_dns_name_options[*]
    content {
      enable_resource_name_dns_aaaa_record = private_dns_name_options.value.enable_resource_name_dns_aaaa_record
      enable_resource_name_dns_a_record = private_dns_name_options.value.enable_resource_name_dns_a_record
      hostname_type = private_dns_name_options.value.hostname_type
    }
  }
  {{- end }}
  {{- if $.Values.private_ip }}
  private_ip = var.values.private_ip
  {{- end }}
  {{- if $.Values.security_groups }}
  security_groups = var.values.security_groups
  {{- end }}
  {{- if $.Values.source_dest_check }}
  source_dest_check = var.values.source_dest_check
  {{- end }}
  {{- if $.Values.subnet_id }}
  subnet_id = var.values.subnet_id
  {{- end }}
  {{- if $.Values.tags }}
  tags = var.values.tags
  {{- end }}
  {{- if $.Values.tenancy }}
  tenancy = var.values.tenancy
  {{- end }}
  {{- if $.Values.user_data_replace_on_change }}
  user_data_replace_on_change = var.values.user_data_replace_on_change
  {{- end }}
  {{- if $.Values.volume_tags }}
  volume_tags = var.values.volume_tags
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


output "ami" {
    value = aws_instance.this.ami
}

output "arn" {
    value = aws_instance.this.arn
}

output "availability_zone" {
    value = aws_instance.this.availability_zone
}

output "cpu_core_count" {
    value = aws_instance.this.cpu_core_count
}

output "cpu_threads_per_core" {
    value = aws_instance.this.cpu_threads_per_core
}

output "host_id" {
    value = aws_instance.this.host_id
}

output "host_resource_group_arn" {
    value = aws_instance.this.host_resource_group_arn
}

output "instance_initiated_shutdown_behavior" {
    value = aws_instance.this.instance_initiated_shutdown_behavior
}

output "instance_state" {
    value = aws_instance.this.instance_state
}

output "instance_type" {
    value = aws_instance.this.instance_type
}

output "ipv6_address_count" {
    value = aws_instance.this.ipv6_address_count
}

output "key_name" {
    value = aws_instance.this.key_name
}

output "outpost_arn" {
    value = aws_instance.this.outpost_arn
}

output "placement_group" {
    value = aws_instance.this.placement_group
}

output "placement_partition_number" {
    value = aws_instance.this.placement_partition_number
}

output "primary_network_interface_id" {
    value = aws_instance.this.primary_network_interface_id
}

output "private_dns" {
    value = aws_instance.this.private_dns
}

output "private_ip" {
    value = aws_instance.this.private_ip
}

output "public_dns" {
    value = aws_instance.this.public_dns
}

output "public_ip" {
    value = aws_instance.this.public_ip
}

output "subnet_id" {
    value = aws_instance.this.subnet_id
}

output "tenancy" {
    value = aws_instance.this.tenancy
}

output "user_data" {
    value = aws_instance.this.user_data
}

output "user_data_base64" {
    value = aws_instance.this.user_data_base64
}

