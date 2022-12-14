
# Primitive Module: aws_iam_access_key

This is the Weave TF-controller primitive module for the resource `aws_iam_access_key`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key). **The example below still needs to be tested and validated**.

## Description

Provides an IAM access key. This is a set of credentials that allow API requests to be made as an IAM user.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: lb
  namespace: flux-system
spec:
  path: aws_iam_access_key
  values:
    pgp_key: keybase:some_person_that_exists
    user: << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#argument-reference) for the arguments accepted by the `aws_iam_access_key` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key#attributes-reference) for the attributes exported by the `aws_iam_access_key` resource.
