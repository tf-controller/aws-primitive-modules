
# Primitive Module: aws_docdb_subnet_group

This is the Weave TF-controller primitive module for the resource `aws_docdb_subnet_group`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group). **The example below still needs to be tested and validated**.

## Description

Provides an DocumentDB subnet group resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: default
  namespace: flux-system
spec:
  path: aws_docdb_subnet_group
  values:
    name: main
    subnet_ids:
    - << id of an aws_subnet >>
    - << id of an aws_subnet >>
    tags:
      Name: My docdb subnet group
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group#argument-reference) for the arguments accepted by the `aws_docdb_subnet_group` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_subnet_group#attributes-reference) for the attributes exported by the `aws_docdb_subnet_group` resource.
