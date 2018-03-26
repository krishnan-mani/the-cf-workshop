- Arriving at the lifecycle configuration created for the Auto Scaling Group based on the `Instance` properties
- Introducing and using `Parameters`
- Troubleshooting stack failures using `--on-failure`


- Using the security group Id (as opposed to security group name)
- Practices to follow when evolving a template
    - one change at a time
    - using change-sets
    - provisioning stacks from scratch versus updating stacks
- Aspects not covered:
    - `UpdatePolicy` for `AutoScalingGroup`
    - `cfn-signal`
    - `cfn-hup`
    
- Use of `ParameterOverrides` to communicate parameter information to CloudFormation stack
- Use AWS-specific parameter types where possible