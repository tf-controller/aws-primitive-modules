######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_lb_listener_rule
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
    action = optional(list({
        authenticate_cognito = optional(list({
            session_timeout = optional(number)
            user_pool_arn = optional(string)
            user_pool_client_id = optional(string)
            user_pool_domain = optional(string)
            authentication_request_extra_params = optional(map(string))
            on_unauthenticated_request = optional(string)
            scope = optional(string)
            session_cookie_name = optional(string)
        }))
        authenticate_oidc = optional(list({
            session_timeout = optional(number)
            token_endpoint = optional(string)
            authentication_request_extra_params = optional(map(string))
            authorization_endpoint = optional(string)
            on_unauthenticated_request = optional(string)
            scope = optional(string)
            session_cookie_name = optional(string)
            client_id = optional(string)
            client_secret = optional(string)
            issuer = optional(string)
            user_info_endpoint = optional(string)
        }))
        type = optional(string)
        order = optional(number)
        target_group_arn = optional(string)
        forward = optional(list({
            target_group = optional(set(any))
            stickiness = optional(list({
                enabled = optional(bool)
                duration = optional(number)
            }))
        }))
        redirect = optional(list({
            path = optional(string)
            port = optional(string)
            protocol = optional(string)
            query = optional(string)
            status_code = optional(string)
            host = optional(string)
        }))
        fixed_response = optional(list({
            content_type = optional(string)
            message_body = optional(string)
            status_code = optional(string)
        }))
    }))
    condition = optional(set(any))
    listener_arn = optional(string)
    tags = optional(map(string))
  })
}

resource "aws_lb_listener_rule" "this" {

  {{- if $.Values.action }}
  action = var.values.action
  {{- end }}
  {{- if $.Values.condition }}
  condition = var.values.condition
  {{- end }}
  {{- if $.Values.listener_arn }}
  listener_arn = var.values.listener_arn
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
    value = aws_lb_listener_rule.this.arn
}

output "listener_arn" {
    value = aws_lb_listener_rule.this.listener_arn
}

output "priority" {
    value = aws_lb_listener_rule.this.priority
}

