
# Primitive Module: aws_docdb_cluster_parameter_group

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_parameter_group`.

## Description

Manages a DocumentDB Cluster Parameter Group

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_docdb_cluster_parameter_group
  values:
    description: docdb cluster parameter group
    family: docdb3.6
    name: example
    parameter:
    - name: tls
      value: enabled
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```