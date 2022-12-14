
# Primitive Module: aws_iam_role

This is the Weave TF-controller primitive module for the resource `aws_iam_role`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role). **The example below still needs to be tested and validated**.

## Description

Provides an IAM role.

~> **NOTE:** If policies are attached to the role via the [`aws_iam_policy_attachment` resource](/docs/providers/aws/r/iam_policy_attachment.html) and you are modifying the role `name` or `path`, the `force_detach_policies` argument must be set to `true` and applied before attempting the operation otherwise you will encounter a `DeleteConflict` error. The [`aws_iam_role_policy_attachment` resource (recommended)](/docs/providers/aws/r/iam_role_policy_attachment.html) does not have this requirement.

~> **NOTE:** If you use this resource's `managed_policy_arns` argument or `inline_policy` configuration blocks, this resource will take over exclusive management of the role's respective policy types (e.g., both policy types if both arguments are used). These arguments are incompatible with other ways of managing a role's policies, such as [`aws_iam_policy_attachment`](/docs/providers/aws/r/iam_policy_attachment.html), [`aws_iam_role_policy_attachment`](/docs/providers/aws/r/iam_role_policy_attachment.html), and [`aws_iam_role_policy`](/docs/providers/aws/r/iam_role_policy.html). If you attempt to manage a role's policies by multiple means, you will get resource cycling and/or errors.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test-role
  namespace: flux-system
spec:
  path: aws_iam_role
  values:
    assume_role_policy: '{"Statement":[{"Action":"sts:AssumeRole","Effect":"Allow","Principal":{"Service":"ec2.amazonaws.com"},"Sid":""}],"Version":"2012-10-17"}'
    name: test_role
    tags:
      tag-key: tag-value
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#argument-reference) for the arguments accepted by the `aws_iam_role` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role#attributes-reference) for the attributes exported by the `aws_iam_role` resource.
