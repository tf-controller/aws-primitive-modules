######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_s3_bucket_notification
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
    bucket = optional(string)
    eventbridge = optional(bool)
    lambda_function = optional(list(object({
        filter_prefix = optional(string)
        filter_suffix = optional(string)
        lambda_function_arn = optional(string)
        events = optional(set(string))
        id = optional(string)
    })))
    queue = optional(list(object({
        id = optional(string)
        filter_prefix = optional(string)
        filter_suffix = optional(string)
        queue_arn = optional(string)
        events = optional(set(string))
    })))
    topic = optional(list(object({
        topic_arn = optional(string)
        events = optional(set(string))
        id = optional(string)
        filter_prefix = optional(string)
        filter_suffix = optional(string)
    })))
  })
}

resource "aws_s3_bucket_notification" "this" {

  {{- if $.Values.bucket }}
  bucket = var.values.bucket
  {{- end }}
  {{- if $.Values.eventbridge }}
  eventbridge = var.values.eventbridge
  {{- end }}
  {{- if $.Values.lambda_function }}
  dynamic "lambda_function" {
    for_each = var.values.lambda_function[*]
    content {
      id = lambda_function.value.id
      filter_prefix = lambda_function.value.filter_prefix
      filter_suffix = lambda_function.value.filter_suffix
      lambda_function_arn = lambda_function.value.lambda_function_arn
      events = lambda_function.value.events
    }
  }
  {{- end }}
  {{- if $.Values.queue }}
  dynamic "queue" {
    for_each = var.values.queue[*]
    content {
      id = queue.value.id
      filter_prefix = queue.value.filter_prefix
      filter_suffix = queue.value.filter_suffix
      queue_arn = queue.value.queue_arn
      events = queue.value.events
    }
  }
  {{- end }}
  {{- if $.Values.topic }}
  dynamic "topic" {
    for_each = var.values.topic[*]
    content {
      events = topic.value.events
      id = topic.value.id
      filter_prefix = topic.value.filter_prefix
      filter_suffix = topic.value.filter_suffix
      topic_arn = topic.value.topic_arn
    }
  }
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


