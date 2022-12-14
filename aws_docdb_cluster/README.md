
# Primitive Module: aws_docdb_cluster

This is the Weave TF-controller primitive module for the resource `aws_docdb_cluster`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster). **The example below still needs to be tested and validated**.

## Description

Manages a DocDB Cluster.

Changes to a DocDB Cluster can occur when you manually change a
parameter, such as `port`, and are reflected in the next maintenance
window. Because of this, Terraform may report a difference in its planning
phase because a modification has not yet taken place. You can use the
`apply_immediately` flag to instruct the service to apply the change immediately
(see documentation below).

~> **Note:** using `apply_immediately` can result in a brief downtime as the server reboots.
~> **Note:** All arguments including the username and password will be stored in the raw state as plain-text.
[Read more about sensitive data in state](https://www.terraform.io/docs/state/sensitive-data.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: docdb
  namespace: flux-system
spec:
  path: aws_docdb_cluster
  values:
    backup_retention_period: 5
    cluster_identifier: my-docdb-cluster
    engine: docdb
    master_password: mustbeeightchars
    master_username: foo
    preferred_backup_window: 07:00-09:00
    skip_final_snapshot: true
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster#argument-reference) for the arguments accepted by the `aws_docdb_cluster` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/docdb_cluster#attributes-reference) for the attributes exported by the `aws_docdb_cluster` resource.
