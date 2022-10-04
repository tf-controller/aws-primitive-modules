
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_instance
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
    ami = optional(string)
    associate_public_ip_address = optional(bool)
    availability_zone = optional(string)
    cpu_core_count = optional(number)
    cpu_threads_per_core = optional(number)
    credit_specification = optional(object({
        cpu_credits = optional(string)
    }))
    ebs_optimized = optional(bool)
    ephemeral_block_device = optional(set(any))
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
  ami = var.values.ami
  associate_public_ip_address = var.values.associate_public_ip_address
  availability_zone = var.values.availability_zone
  cpu_core_count = var.values.cpu_core_count
  cpu_threads_per_core = var.values.cpu_threads_per_core
  credit_specification = var.values.credit_specification
  ebs_optimized = var.values.ebs_optimized
  ephemeral_block_device = var.values.ephemeral_block_device
  get_password_data = var.values.get_password_data
  hibernation = var.values.hibernation
  host_id = var.values.host_id
  iam_instance_profile = var.values.iam_instance_profile
  ipv6_address_count = var.values.ipv6_address_count
  ipv6_addresses = var.values.ipv6_addresses
  key_name = var.values.key_name
  launch_template = var.values.launch_template
  placement_group = var.values.placement_group
  placement_partition_number = var.values.placement_partition_number
  private_ip = var.values.private_ip
  security_groups = var.values.security_groups
  source_dest_check = var.values.source_dest_check
  subnet_id = var.values.subnet_id
  tags = var.values.tags
  tenancy = var.values.tenancy
  user_data_replace_on_change = var.values.user_data_replace_on_change
  volume_tags = var.values.volume_tags
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

