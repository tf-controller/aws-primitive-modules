
# Primitive Module: aws_ec2_transit_gateway_policy_table_association

This is the Weave TF-controller primitive module for the resource `aws_ec2_transit_gateway_policy_table_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table_association). **The example below still needs to be tested and validated**.

## Description

Manages an EC2 Transit Gateway Policy Table association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_transit_gateway_policy_table_association
  values:
    transit_gateway_attachment_id: << transit_gateway_peering_attachment_id of an aws_networkmanager_transit_gateway_peering >>
    transit_gateway_policy_table_id: << id of an aws_ec2_transit_gateway_policy_table >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table_association#argument-reference) for the arguments accepted by the `aws_ec2_transit_gateway_policy_table_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_transit_gateway_policy_table_association#attributes-reference) for the attributes exported by the `aws_ec2_transit_gateway_policy_table_association` resource.
