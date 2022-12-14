
# Primitive Module: aws_ec2_subnet_cidr_reservation

This is the Weave TF-controller primitive module for the resource `aws_ec2_subnet_cidr_reservation`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_subnet_cidr_reservation). **The example below still needs to be tested and validated**.

## Description

Provides a subnet CIDR reservation resource.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_subnet_cidr_reservation
  values:
    cidr_block: 10.0.0.16/28
    reservation_type: prefix
    subnet_id: << id of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_subnet_cidr_reservation#argument-reference) for the arguments accepted by the `aws_ec2_subnet_cidr_reservation` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_subnet_cidr_reservation#attributes-reference) for the attributes exported by the `aws_ec2_subnet_cidr_reservation` resource.
