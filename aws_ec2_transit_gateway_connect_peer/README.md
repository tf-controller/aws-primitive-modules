
# Primitive Module: aws_ec2_transit_gateway_connect_peer

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_connect_peer`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_connect_peer). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Connect Peer.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_connect_peer
  values:
    inside_cidr_blocks:
    - 169.254.100.0/29
    peer_address: 10.1.2.3
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_connect >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_connect_peer#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_connect_peer` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_connect_peer#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_connect_peer` resource.
