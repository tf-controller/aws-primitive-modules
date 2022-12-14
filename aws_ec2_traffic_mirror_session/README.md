
# Primitive Module: aws_ec2_traffic_mirror_session

This is the Weave TF-controller primitive module for the resource `aws_ec2_traffic_mirror_session`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_session). **The example below still needs to be tested and validated**.

## Description

Provides an Traffic mirror session.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: session
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_session
  values:
    description: traffic mirror session - terraform example
    network_interface_id: << primary_network_interface_id of an aws_instance >>
    session_number: 1
    traffic_mirror_filter_id: << id of an aws_ec2_traffic_mirror_filter >>
    traffic_mirror_target_id: << id of an aws_ec2_traffic_mirror_target >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_session#argument-reference) for the arguments accepted by the `aws_ec2_traffic_mirror_session` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_session#attributes-reference) for the attributes exported by the `aws_ec2_traffic_mirror_session` resource.
