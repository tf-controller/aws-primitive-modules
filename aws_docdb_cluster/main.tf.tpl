
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_docdb_cluster
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
    availability_zones = optional(set(string))
    backup_retention_period = optional(number)
    cluster_identifier = optional(string)
    cluster_identifier_prefix = optional(string)
    db_subnet_group_name = optional(string)
    deletion_protection = optional(bool)
    enabled_cloudwatch_logs_exports = optional(list(string))
    engine = optional(string)
    final_snapshot_identifier = optional(string)
    global_cluster_identifier = optional(string)
    kms_key_id = optional(string)
    master_password = optional(string)
    master_username = optional(string)
    port = optional(number)
    skip_final_snapshot = optional(bool)
    snapshot_identifier = optional(string)
    storage_encrypted = optional(bool)
    tags = optional(map(string))
  })
}

resource "aws_docdb_cluster" "this" {
  availability_zones = var.values.availability_zones
  backup_retention_period = var.values.backup_retention_period
  cluster_identifier = var.values.cluster_identifier
  cluster_identifier_prefix = var.values.cluster_identifier_prefix
  db_subnet_group_name = var.values.db_subnet_group_name
  deletion_protection = var.values.deletion_protection
  enabled_cloudwatch_logs_exports = var.values.enabled_cloudwatch_logs_exports
  engine = var.values.engine
  final_snapshot_identifier = var.values.final_snapshot_identifier
  global_cluster_identifier = var.values.global_cluster_identifier
  kms_key_id = var.values.kms_key_id
  master_password = var.values.master_password
  master_username = var.values.master_username
  port = var.values.port
  skip_final_snapshot = var.values.skip_final_snapshot
  snapshot_identifier = var.values.snapshot_identifier
  storage_encrypted = var.values.storage_encrypted
  tags = var.values.tags
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
    value = aws_docdb_cluster.this.arn
}

output "cluster_identifier" {
    value = aws_docdb_cluster.this.cluster_identifier
}

output "cluster_resource_id" {
    value = aws_docdb_cluster.this.cluster_resource_id
}

output "db_cluster_parameter_group_name" {
    value = aws_docdb_cluster.this.db_cluster_parameter_group_name
}

output "db_subnet_group_name" {
    value = aws_docdb_cluster.this.db_subnet_group_name
}

output "endpoint" {
    value = aws_docdb_cluster.this.endpoint
}

output "engine_version" {
    value = aws_docdb_cluster.this.engine_version
}

output "hosted_zone_id" {
    value = aws_docdb_cluster.this.hosted_zone_id
}

output "kms_key_id" {
    value = aws_docdb_cluster.this.kms_key_id
}

output "master_username" {
    value = aws_docdb_cluster.this.master_username
}

output "preferred_backup_window" {
    value = aws_docdb_cluster.this.preferred_backup_window
}

output "preferred_maintenance_window" {
    value = aws_docdb_cluster.this.preferred_maintenance_window
}

output "reader_endpoint" {
    value = aws_docdb_cluster.this.reader_endpoint
}

