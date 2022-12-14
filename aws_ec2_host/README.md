
# Primitive Module: aws_ec2_host

This is the Weave TF-controller primitive module for the resource `aws_ec2_host`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_host). **The example below still needs to be tested and validated**.

## Description

Provides an EC2 Host resource. This allows Dedicated Hosts to be allocated, modified, and released.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: test
  namespace: flux-system
spec:
  path: aws_ec2_host
  values:
    auto_placement: "on"
    availability_zone: us-west-2a
    host_recovery: "on"
    instance_type: c5.18xlarge
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_host#argument-reference) for the arguments accepted by the `aws_ec2_host` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_host#attributes-reference) for the attributes exported by the `aws_ec2_host` resource.
