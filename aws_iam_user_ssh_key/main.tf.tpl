######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_iam_user_ssh_key
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
    encoding = optional(string)
    public_key = optional(string)
    username = optional(string)
  })
}

resource "aws_iam_user_ssh_key" "this" {

  {{- if $.Values.encoding }}
  encoding = var.values.encoding
  {{- end }}
  {{- if $.Values.public_key }}
  public_key = var.values.public_key
  {{- end }}
  {{- if $.Values.username }}
  username = var.values.username
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


output "fingerprint" {
    value = aws_iam_user_ssh_key.this.fingerprint
}

output "ssh_public_key_id" {
    value = aws_iam_user_ssh_key.this.ssh_public_key_id
}

output "status" {
    value = aws_iam_user_ssh_key.this.status
}

