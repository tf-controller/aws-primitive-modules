
# Primitive Module: aws_s3_bucket_website_configuration

This is the Weave TF-controller primitive module for the resource `aws_s3_bucket_website_configuration`.

~> **CAUTION:** This primitive module is automatically generated from the [AWS Terraform Provider](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration). **The example below still needs to be tested and validated**.

## Description

Provides an S3 bucket website configuration resource. For more information, see [Hosting Websites on S3](https://docs.aws.amazon.com/AmazonS3/latest/dev/WebsiteHosting.html).

## Example usage

```yaml
---
apiVersion: infra.contrib.fluxcd.io/v1alpha1
kind: Terraform
metadata:
  name: example
  namespace: flux-system
spec:
  path: aws_s3_bucket_website_configuration
  values:
    bucket: << bucket of an aws_s3_bucket >>
    error_document:
    - key: error.html
    index_document:
    - suffix: index.html
    routing_rule:
    - condition:
      - key_prefix_equals: docs/
      redirect:
      - replace_key_prefix_with: documents/
  sourceRef:
    kind: OCIRepository
    name: aws-package
  approvePlan: auto
  interval: 1h0m
  retryInterval: 20s
```

## Argument Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration#argument-reference) for the arguments accepted by the `aws_s3_bucket_website_configuration` resource.

## Attribute Reference

Please visit [here](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_website_configuration#attributes-reference) for the attributes exported by the `aws_s3_bucket_website_configuration` resource.
