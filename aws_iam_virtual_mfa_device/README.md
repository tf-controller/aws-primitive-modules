
# Primitive Module: aws_iam_virtual_mfa_device

This is the Weave TF-controller primitive module for the resource `aws_iam_virtual_mfa_device`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_virtual_mfa_device). **The example below still needs to be tested and validated**.

## Description

Provides an IAM Virtual MFA Device.

~> **Note:** All attributes will be stored in the raw state as plain-text.
[Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_iam_virtual_mfa_device
  values:
    virtual_mfa_device_name: example
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_virtual_mfa_device#argument-reference) for the arguments accepted by the `aws_iam_virtual_mfa_device` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_virtual_mfa_device#attributes-reference) for the attributes exported by the `aws_iam_virtual_mfa_device` resource.
