
# Primitive Module: aws_ec2_traffic_mirror_filter_rule

This is the Weave TF-controller primitive module for resource `aws_ec2_traffic_mirror_filter_rule`.

## Description

Provides an Traffic mirror filter rule.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: rulein
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_filter_rule
  values:
    description: test rule
    destination_cidr_block: 10.0.0.0/8
    destination_port_range:
    - from_port: 22
      to_port: 53
    protocol: 6
    rule_action: accept
    rule_number: 1
    source_cidr_block: 10.0.0.0/8
    source_port_range:
    - from_port: 0
      to_port: 10
    traffic_direction: ingress
    traffic_mirror_filter_id: << id of an aws_ec2_traffic_mirror_filter >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: ruleout
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_filter_rule
  values:
    description: test rule
    destination_cidr_block: 10.0.0.0/8
    rule_action: accept
    rule_number: 1
    source_cidr_block: 10.0.0.0/8
    traffic_direction: egress
    traffic_mirror_filter_id: << id of an aws_ec2_traffic_mirror_filter >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```