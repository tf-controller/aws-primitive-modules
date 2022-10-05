
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ecs_task_definition
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
    container_definitions = optional(string)
    cpu = optional(string)
    ephemeral_storage = optional(object({
        size_in_gib = optional(number)
    }))
    execution_role_arn = optional(string)
    family = optional(string)
    inference_accelerator = optional(set(any))
    ipc_mode = optional(string)
    memory = optional(string)
    network_mode = optional(string)
    pid_mode = optional(string)
    placement_constraints = optional(set(any))
    proxy_configuration = optional(object({
        container_name = optional(string)
        properties = optional(map(string))
        type = optional(string)
    }))
    requires_compatibilities = optional(set(string))
    runtime_platform = optional(object({
        cpu_architecture = optional(string)
        operating_system_family = optional(string)
    }))
    skip_destroy = optional(bool)
    tags = optional(map(string))
    task_role_arn = optional(string)
    volume = optional(set(any))
  })
}

resource "aws_ecs_task_definition" "this" {
  container_definitions = var.values.container_definitions
  cpu = var.values.cpu
  ephemeral_storage = var.values.ephemeral_storage
  execution_role_arn = var.values.execution_role_arn
  family = var.values.family
  inference_accelerator = var.values.inference_accelerator
  ipc_mode = var.values.ipc_mode
  memory = var.values.memory
  network_mode = var.values.network_mode
  pid_mode = var.values.pid_mode
  placement_constraints = var.values.placement_constraints
  proxy_configuration = var.values.proxy_configuration
  requires_compatibilities = var.values.requires_compatibilities
  runtime_platform = var.values.runtime_platform
  skip_destroy = var.values.skip_destroy
  tags = var.values.tags
  task_role_arn = var.values.task_role_arn
  volume = var.values.volume
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
    value = aws_ecs_task_definition.this.arn
}

output "execution_role_arn" {
    value = aws_ecs_task_definition.this.execution_role_arn
}

output "network_mode" {
    value = aws_ecs_task_definition.this.network_mode
}

output "revision" {
    value = aws_ecs_task_definition.this.revision
}

output "task_role_arn" {
    value = aws_ecs_task_definition.this.task_role_arn
}

