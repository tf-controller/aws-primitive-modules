
######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_docdb_cluster_snapshot
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
    db_cluster_identifier = optional(string)
    db_cluster_snapshot_identifier = optional(string)
  })
}

resource "aws_docdb_cluster_snapshot" "this" {
  db_cluster_identifier = var.values.db_cluster_identifier
  db_cluster_snapshot_identifier = var.values.db_cluster_snapshot_identifier
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


output "db_cluster_snapshot_arn" {
    value = aws_docdb_cluster_snapshot.this.db_cluster_snapshot_arn
}

output "engine" {
    value = aws_docdb_cluster_snapshot.this.engine
}

output "engine_version" {
    value = aws_docdb_cluster_snapshot.this.engine_version
}

output "kms_key_id" {
    value = aws_docdb_cluster_snapshot.this.kms_key_id
}

output "port" {
    value = aws_docdb_cluster_snapshot.this.port
}

output "snapshot_type" {
    value = aws_docdb_cluster_snapshot.this.snapshot_type
}

output "source_db_cluster_snapshot_arn" {
    value = aws_docdb_cluster_snapshot.this.source_db_cluster_snapshot_arn
}

output "status" {
    value = aws_docdb_cluster_snapshot.this.status
}

output "vpc_id" {
    value = aws_docdb_cluster_snapshot.this.vpc_id
}

