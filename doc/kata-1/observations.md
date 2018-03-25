- [What formats to use for templates](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/template-formats.html)?
- What [intrinsic functions](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/intrinsic-function-reference.html) (like `Fn::Join`) were used?
- What [pseudo-parameters](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/pseudo-parameter-reference.html) were used?
- How is [`UserData`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-userdata) used? Usage of [`cfn-init`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/cfn-init.html) together with [`Metadata`](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/metadata-section-structure.html)
- What is the stack lifecycle? How is a stack updated?
- What options are available during stack creation (and other actions on a stack)?
- Why was the instance replaced when a security group was assigned?
- What happens when resources are modified outside of the stack?
- On the implicit use of default VPC to deploy resources

Errors:
====

- Error: Failed to create the stack since the default instance type `m3.medium` was not available in the specified region