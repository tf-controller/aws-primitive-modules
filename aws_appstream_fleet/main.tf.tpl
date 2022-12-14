######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appstream_fleet
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
    compute_capacity = optional(list(object({
        running = optional(number)
        available = optional(number)
        desired_instances = optional(number)
        in_use = optional(number)
    })))
    fleet_type = optional(string)
    idle_disconnect_timeout_in_seconds = optional(number)
    instance_type = optional(string)
    name = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_appstream_fleet" "this" {

  {{- if $.Values.compute_capacity }}
  dynamic "compute_capacity" {
    for_each = var.values.compute_capacity[*]
    content {
      available = compute_capacity.value.available
      desired_instances = compute_capacity.value.desired_instances
      in_use = compute_capacity.value.in_use
      running = compute_capacity.value.running
    }
  }
  {{- end }}
  {{- if $.Values.fleet_type }}
  fleet_type = var.values.fleet_type
  {{- end }}
  {{- if $.Values.idle_disconnect_timeout_in_seconds }}
  idle_disconnect_timeout_in_seconds = var.values.idle_disconnect_timeout_in_seconds
  {{- end }}
  {{- if $.Values.instance_type }}
  instance_type = var.values.instance_type
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
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
    value = aws_appstream_fleet.this.arn
}

output "created_time" {
    value = aws_appstream_fleet.this.created_time
}

output "description" {
    value = aws_appstream_fleet.this.description
}

output "disconnect_timeout_in_seconds" {
    value = aws_appstream_fleet.this.disconnect_timeout_in_seconds
}

output "display_name" {
    value = aws_appstream_fleet.this.display_name
}

output "fleet_type" {
    value = aws_appstream_fleet.this.fleet_type
}

output "iam_role_arn" {
    value = aws_appstream_fleet.this.iam_role_arn
}

output "image_arn" {
    value = aws_appstream_fleet.this.image_arn
}

output "image_name" {
    value = aws_appstream_fleet.this.image_name
}

output "max_user_duration_in_seconds" {
    value = aws_appstream_fleet.this.max_user_duration_in_seconds
}

output "state" {
    value = aws_appstream_fleet.this.state
}

output "stream_view" {
    value = aws_appstream_fleet.this.stream_view
}

