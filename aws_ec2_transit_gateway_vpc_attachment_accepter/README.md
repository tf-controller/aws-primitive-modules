
# Primitive Module: aws_ec2_transit_gateway_vpc_attachment_accepter

This is the Weave TF-controller primitive module for resource `aws_ec2_transit_gateway_vpc_attachment_accepter`.

## Description

Manages the accepter's side of an EC2 Transit Gateway VPC Attachment.

When a cross-account (requester's AWS account differs from the accepter's AWS account) EC2 Transit Gateway VPC Attachment
is created, an EC2 Transit Gateway VPC Attachment resource is automatically created in the accepter's account.
The requester can use the `aws_ec2_transit_gateway_vpc_attachment` resource to manage its side of the connection
and the accepter can use the `aws_ec2_transit_gateway_vpc_attachment_accepter` resource to "adopt" its side of the
connection into management.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_vpc_attachment_accepter
  values:
    tags:
      Name: Example cross-account attachment
    transit_gateway_attachment_id: << id of an aws_ec2_transit_gateway_vpc_attachment >>
  sourceRef:
    kind: OCIRepository
    name: aws-package-v4.33.0
  approvalPlan: auto
  interval: 1h0m
```