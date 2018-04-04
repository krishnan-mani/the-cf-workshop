- Ensure that service role grants CloudFormation the privileges to provision resources in all impacted services
- In the case of pipelines, ensure the creation of the service role for CodePipeline that allows it to operate on S3, CloudFormation, and SNS
- The service roles for CloudFormation and for CodePipeline are required to be created on the `provisioning` accounts
- Ensure that the service roles are narrowly scoped in terms of CloudFormation actions on specific stacks
    