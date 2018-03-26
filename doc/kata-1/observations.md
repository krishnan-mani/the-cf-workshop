- [What formats to use for templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-formats.html)?
- Keep the [template reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-reference.html) handy
- About properties for a resource type: `Required`, `Type`, and `Update requires`
- What [intrinsic functions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html) (like `Fn::Join`) were used?
- What [pseudo-parameters](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html) were used?
- How is [`UserData`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-userdata) used? Review the use of [`cfn-init`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html) together with [`Metadata`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html)?
- What is the stack lifecycle? How is a stack updated?
- What options are available during stack creation (and other actions on a stack)?
    - Troubleshooting stack failures using `--on-failure`
- Why was the instance replaced when a security group was assigned?
- Using `Outputs` to obtain information on stack resources
- What happens when resources are modified outside of the stack?
- On the implicit use of default VPC to deploy resources

Errors and troubleshooting
====

- Error: Failed to create the stack since the default instance type `m3.medium` was not available in the specified region

When the `InstanceType` is not specified for a resource of type `AWS::EC2::Instance`, the default is `m3.medium`. However, instances of this type may not be available, say, in newer AWS regions

