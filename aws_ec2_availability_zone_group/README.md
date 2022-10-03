
# Primitive Module: aws_ec2_availability_zone_group

This is the Weave TF-controller primitive module for resource `aws_ec2_availability_zone_group`.

## Description

Manages an EC2 Availability Zone Group, such as updating its opt-in status.

~> **NOTE:** This is an advanced Terraform resource. Terraform will automatically assume management of the EC2 Availability Zone Group without import and perform no actions on removal from configuration.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_availability_zone_group
  values:
    group_name: us-west-2-lax-1
    opt_in_status: opted-in
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```