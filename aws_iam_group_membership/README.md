
# Primitive Module: aws_iam_group_membership

This is the Weave TF-controller primitive module for resource `aws_iam_group_membership`.

## Description

~> **WARNING:** Multiple aws_iam_group_membership resources with the same group name will produce inconsistent behavior!

Provides a top level resource to manage IAM Group membership for IAM Users. For
more information on managing IAM Groups or IAM Users, see [IAM Groups][1] or
[IAM Users][2]

~> **Note:** `aws_iam_group_membership` will conflict with itself if used more than once with the same group. To non-exclusively manage the users in a group, see the
[`aws_iam_user_group_membership` resource][3].

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: team
  namespace: flux-system
spec:
  path: aws_iam_group_membership
  values:
    group: << name of an aws_iam_group >>
    name: tf-testing-group-membership
    users:
    - << name of an aws_iam_user >>
    - << name of an aws_iam_user >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```