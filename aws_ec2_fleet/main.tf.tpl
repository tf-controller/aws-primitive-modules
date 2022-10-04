
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_ec2_fleet
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
    context = optional(string)
    excess_capacity_termination_policy = optional(string)
    launch_template_config = optional(object({
        launch_template_specification = optional(object({
            launch_template_id = optional(string)
            launch_template_name = optional(string)
            version = optional(string)
        }))
        override = optional(object({
            availability_zone = optional(string)
            instance_type = optional(string)
            max_price = optional(string)
            priority = optional(number)
            subnet_id = optional(string)
            weighted_capacity = optional(number)
        }))
    }))
    on_demand_options = optional(object({
        allocation_strategy = optional(string)
    }))
    replace_unhealthy_instances = optional(bool)
    spot_options = optional(object({
        allocation_strategy = optional(string)
        instance_interruption_behavior = optional(string)
        instance_pools_to_use_count = optional(number)
        maintenance_strategies = optional(object({
            capacity_rebalance = optional(object({
                replacement_strategy = optional(string)
            }))
        }))
    }))
    tags = optional(map(string))
    target_capacity_specification = optional(object({
        default_target_capacity_type = optional(string)
        on_demand_target_capacity = optional(number)
        spot_target_capacity = optional(number)
        total_target_capacity = optional(number)
    }))
    terminate_instances = optional(bool)
    terminate_instances_with_expiration = optional(bool)
    type = optional(string)
  })
}

resource "aws_ec2_fleet" "this" {
  context = var.values.context
  excess_capacity_termination_policy = var.values.excess_capacity_termination_policy
  launch_template_config = var.values.launch_template_config
  on_demand_options = var.values.on_demand_options
  replace_unhealthy_instances = var.values.replace_unhealthy_instances
  spot_options = var.values.spot_options
  tags = var.values.tags
  target_capacity_specification = var.values.target_capacity_specification
  terminate_instances = var.values.terminate_instances
  terminate_instances_with_expiration = var.values.terminate_instances_with_expiration
  type = var.values.type
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


