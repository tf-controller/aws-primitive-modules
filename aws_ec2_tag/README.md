
# Primitive Module: aws_ec2_tag

This is the Weave TF-controller primitive module for the resource `aws_ec2_tag`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag). **The example below still needs to be tested and validated**.

## Description

Manages an individual EC2 resource tag. This resource should only be used in cases where EC2 resources are created outside Terraform (e.g., AMIs), being shared via Resource Access Manager (RAM), or implicitly created by other means (e.g., Transit Gateway VPN Attachments).

~> **NOTE:** This tagging resource should not be combined with the Terraform resource for managing the parent resource. For example, using `aws_vpc` and `aws_ec2_tag` to manage tags of the same VPC will cause a perpetual difference where the `aws_vpc` resource will try to remove the tag being added by the `aws_ec2_tag` resource.

~> **NOTE:** This tagging resource does not use the [provider `ignore_tags` configuration](/docs/providers/aws/index.html#ignore_tags).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_tag
  values:
    key: Name
    resource_id: << transit_gateway_attachment_id of an aws_vpn_connection >>
    value: Hello World
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag#argument-reference) for the arguments accepted by the `aws_ec2_tag` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_tag#attributes-reference) for the attributes exported by the `aws_ec2_tag` resource.
