
# Primitive Module: aws_ec2_client_vpn_network_association

This is the Weave TF-controller primitive module for the resource `aws_ec2_client_vpn_network_association`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_network_association). **The example below still needs to be tested and validated**.

## Description

Provides network associations for AWS Client VPN endpoints. For more information on usage, please see the
[AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).

~> **NOTE on Client VPN endpoint target network security groups:** Terraform provides both a standalone Client VPN endpoint network association resource with a (deprecated) `security_groups` argument and a [Client VPN endpoint](ec2_client_vpn_endpoint.html) resource with a `security_group_ids` argument. Do not specify security groups in both resources. Doing so will cause a conflict and will overwrite the target network security group association.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_ec2_client_vpn_network_association
  values:
    client_vpn_endpoint_id: << id of an aws_ec2_client_vpn_endpoint >>
    subnet_id: << id of an aws_subnet >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_network_association#argument-reference) for the arguments accepted by the `aws_ec2_client_vpn_network_association` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_client_vpn_network_association#attributes-reference) for the attributes exported by the `aws_ec2_client_vpn_network_association` resource.
