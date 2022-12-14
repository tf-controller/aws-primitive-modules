
# Primitive Module: aws_ec2_managed_prefix_list_entry

This is the Weave TF-controller primitive module for the resource `aws_ec2_managed_prefix_list_entry`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_managed_prefix_list_entry). **The example below still needs to be tested and validated**.

## Description

Provides a managed prefix list entry resource.

~> **NOTE on Managed Prefix Lists and Managed Prefix List Entries:** Terraform
currently provides both a standalone Managed Prefix List Entry resource (a single entry),
and a [Managed Prefix List resource](ec2_managed_prefix_list.html) with entries defined
in-line. At this time you cannot use a Managed Prefix List with in-line rules in
conjunction with any Managed Prefix List Entry resources. Doing so will cause a conflict
of entries and will overwrite entries.

~> **NOTE on Managed Prefix Lists with many entries:**  To improved execution times on larger
updates, if you plan to create a prefix list with more than 100 entries, it is **recommended**
that you use the inline `entry` block as part of the [Managed Prefix List resource](ec2_managed_prefix_list.html)
resource instead.

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: entry-1
  namespace: flux-system
spec:
  path: aws_ec2_managed_prefix_list_entry
  values:
    cidr: << cidr_block of an aws_vpc >>
    description: Primary
    prefix_list_id: << id of an aws_ec2_managed_prefix_list >>
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_managed_prefix_list_entry#argument-reference) for the arguments accepted by the `aws_ec2_managed_prefix_list_entry` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ec2_managed_prefix_list_entry#attributes-reference) for the attributes exported by the `aws_ec2_managed_prefix_list_entry` resource.
