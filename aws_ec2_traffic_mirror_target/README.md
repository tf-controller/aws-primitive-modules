
# Primitive Module: aws_ec2_traffic_mirror_target

This is the Weave TF-controller primitive module for the resource `aws_ec2_traffic_mirror_target`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_target). **The example below still needs to be tested and validated**.

## Description

Provides a Traffic mirror target.  
Read [limits and considerations](https://docs.aws.amazon.com/vpc/latest/mirroring/traffic-mirroring-considerations.html) for traffic mirroring

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: eni
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: ENI target
    network_interface_id: << primary_network_interface_id of an aws_instance >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: gwlb
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: GWLB target
    gateway_load_balancer_endpoint_id: << id of an aws_vpc_endpoint >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: nlb
  namespace: flux-system
spec:
  path: aws_ec2_traffic_mirror_target
  values:
    description: NLB target
    network_load_balancer_arn: << arn of an aws_lb >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_target#argument-reference) for the arguments accepted by the `aws_ec2_traffic_mirror_target` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_traffic_mirror_target#attributes-reference) for the attributes exported by the `aws_ec2_traffic_mirror_target` resource.
