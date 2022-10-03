
# Primitive Module: aws_ec2_capacity_reservation

This is the Weave TF-controller primitive module for resource `aws_ec2_capacity_reservation`.

## Description

Provides an EC2 Capacity Reservation. This allows you to reserve capacity for your Amazon EC2 instances in a specific Availability Zone for any duration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: default
  namespace: flux-system
spec:
  path: aws_ec2_capacity_reservation
  values:
    availability_zone: eu-west-1a
    instance_count: 1
    instance_platform: Linux/UNIX
    instance_type: t2.micro
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```