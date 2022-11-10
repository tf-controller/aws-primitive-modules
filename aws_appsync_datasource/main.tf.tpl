######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appsync_datasource
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
    api_id = optional(string)
    description = optional(string)
    dynamodb_config = optional(list(object({
        region = optional(string)
        table_name = optional(string)
        use_caller_credentials = optional(bool)
        versioned = optional(bool)
        delta_sync_config = optional(list(object({
            delta_sync_table_ttl = optional(number)
            base_table_ttl = optional(number)
            delta_sync_table_name = optional(string)
        })))
    })))
    elasticsearch_config = optional(list(object({
        region = optional(string)
        endpoint = optional(string)
    })))
    http_config = optional(list(object({
        endpoint = optional(string)
        authorization_config = optional(list(object({
            authorization_type = optional(string)
            aws_iam_config = optional(list(object({
                signing_region = optional(string)
                signing_service_name = optional(string)
            })))
        })))
    })))
    lambda_config = optional(list(object({
        function_arn = optional(string)
    })))
    name = optional(string)
    relational_database_config = optional(list(object({
        source_type = optional(string)
        http_endpoint_config = optional(list(object({
            database_name = optional(string)
            region = optional(string)
            schema = optional(string)
            db_cluster_identifier = optional(string)
            aws_secret_store_arn = optional(string)
        })))
    })))
    service_role_arn = optional(string)
    type = optional(string)
  })
}

resource "aws_appsync_datasource" "this" {

  {{- if $.Values.api_id }}
  api_id = var.values.api_id
  {{- end }}
  {{- if $.Values.description }}
  description = var.values.description
  {{- end }}
  {{- if $.Values.dynamodb_config }}
  dynamodb_config = var.values.dynamodb_config
  {{- end }}
  {{- if $.Values.elasticsearch_config }}
  elasticsearch_config = var.values.elasticsearch_config
  {{- end }}
  {{- if $.Values.http_config }}
  http_config = var.values.http_config
  {{- end }}
  {{- if $.Values.lambda_config }}
  lambda_config = var.values.lambda_config
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.relational_database_config }}
  relational_database_config = var.values.relational_database_config
  {{- end }}
  {{- if $.Values.service_role_arn }}
  service_role_arn = var.values.service_role_arn
  {{- end }}
  {{- if $.Values.type }}
  type = var.values.type
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
    value = aws_appsync_datasource.this.arn
}

output "service_role_arn" {
    value = aws_appsync_datasource.this.service_role_arn
}

