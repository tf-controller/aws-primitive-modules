
# Primitive Module: aws_ami_launch_permission

This is the Weave TF-controller primitive module for the resource `aws_ami_launch_permission`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_launch_permission). **The example below still needs to be tested and validated**.

## Description

Adds a launch permission to an Amazon Machine Image (AMI).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ami_launch_permission
  values:
    account_id: "123456789012"
    image_id: ami-12345678
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_launch_permission#argument-reference) for the arguments accepted by the `aws_ami_launch_permission` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ami_launch_permission#attributes-reference) for the attributes exported by the `aws_ami_launch_permission` resource.
