######################################################################
# Generated by Tofu-Jet. Please do not manually edit.
# AWS Primitive Module for TF-controller
# Resource: aws_appmesh_virtual_gateway
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
    mesh_name = optional(string)
    mesh_owner = optional(string)
    name = optional(string)
    spec = optional(list({
        backend_defaults = optional(list({
            client_policy = optional(list({
                tls = optional(list({
                    enforce = optional(bool)
                    ports = optional(set(number))
                    validation = optional(list({
                        subject_alternative_names = optional(list({
                            match = optional(list({
                                exact = optional(set(string))
                            }))
                        }))
                        trust = optional(list({
                            acm = optional(list({
                                certificate_authority_arns = optional(set(string))
                            }))
                            file = optional(list({
                                certificate_chain = optional(string)
                            }))
                            sds = optional(list({
                                secret_name = optional(string)
                            }))
                        }))
                    }))
                    certificate = optional(list({
                        file = optional(list({
                            private_key = optional(string)
                            certificate_chain = optional(string)
                        }))
                        sds = optional(list({
                            secret_name = optional(string)
                        }))
                    }))
                }))
            }))
        }))
        listener = optional(list({
            health_check = optional(list({
                healthy_threshold = optional(number)
                interval_millis = optional(number)
                path = optional(string)
                port = optional(number)
                protocol = optional(string)
                timeout_millis = optional(number)
                unhealthy_threshold = optional(number)
            }))
            port_mapping = optional(list({
                port = optional(number)
                protocol = optional(string)
            }))
            tls = optional(list({
                certificate = optional(list({
                    sds = optional(list({
                        secret_name = optional(string)
                    }))
                    acm = optional(list({
                        certificate_arn = optional(string)
                    }))
                    file = optional(list({
                        certificate_chain = optional(string)
                        private_key = optional(string)
                    }))
                }))
                mode = optional(string)
                validation = optional(list({
                    subject_alternative_names = optional(list({
                        match = optional(list({
                            exact = optional(set(string))
                        }))
                    }))
                    trust = optional(list({
                        sds = optional(list({
                            secret_name = optional(string)
                        }))
                        file = optional(list({
                            certificate_chain = optional(string)
                        }))
                    }))
                }))
            }))
            connection_pool = optional(list({
                grpc = optional(list({
                    max_requests = optional(number)
                }))
                http = optional(list({
                    max_connections = optional(number)
                    max_pending_requests = optional(number)
                }))
                http2 = optional(list({
                    max_requests = optional(number)
                }))
            }))
        }))
        logging = optional(list({
            access_log = optional(list({
                file = optional(list({
                    path = optional(string)
                }))
            }))
        }))
    }))
    tags = optional(map(string))
  })
}

resource "aws_appmesh_virtual_gateway" "this" {

  {{- if $.Values.mesh_name }}
  mesh_name = var.values.mesh_name
  {{- end }}
  {{- if $.Values.mesh_owner }}
  mesh_owner = var.values.mesh_owner
  {{- end }}
  {{- if $.Values.name }}
  name = var.values.name
  {{- end }}
  {{- if $.Values.spec }}
  spec = var.values.spec
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
    value = aws_appmesh_virtual_gateway.this.arn
}

output "created_date" {
    value = aws_appmesh_virtual_gateway.this.created_date
}

output "last_updated_date" {
    value = aws_appmesh_virtual_gateway.this.last_updated_date
}

output "mesh_owner" {
    value = aws_appmesh_virtual_gateway.this.mesh_owner
}

output "resource_owner" {
    value = aws_appmesh_virtual_gateway.this.resource_owner
}

