
# Primitive Module: aws_docdb_cluster_instance

This is the Weave TF-controller primitive module for resource `aws_docdb_cluster_instance`.

## Description

Provides an DocDB Cluster Resource Instance. A Cluster Instance Resource defines
attributes that are specific to a single instance in a [DocDB Cluster][1].

You do not designate a primary and subsequent replicas. Instead, you simply add DocDB
Instances and DocDB manages the replication. You can use the [count][3]
meta-parameter to make multiple instances and join them all to the same DocDB
Cluster, or you may specify different Cluster Instance resources with various
`instance_class` sizes.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: cluster-instances
  namespace: flux-system
spec:
  path: aws_docdb_cluster_instance
  values:
    cluster_identifier: << id of an aws_docdb_cluster >>
    count: 2
    identifier: docdb-cluster-demo-${count.index}
    instance_class: db.r5.large
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```