Story 3: Add an Auto Scaling Group and load balancer

- Remember to commit changes to the template to version control on the `develop` branch, and push changes to the `remote` to provision the `webapp-develop` stack

```
$ git add templates/template.yaml
$ git commit -m "Story 3 (work-in-progress)"
$ git push origin develop

```

- As the pipeline obtains and deploys template changes to the stack, you can monitor the stack changes from the console 
- Add a [Lifecycle Configuration](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html) to the template
- Obtain subnet Ids for public subnets in the default VPC. These are required for the Auto Scaling Group and load balancer

```
$ aws ec2 describe-subnets \
    --query "Subnets[*].SubnetId"

```

- Add an [Auto Scaling Group](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html) to the template 
    - Remove the EC2 instance for thw webserver, which is no longer needed 
    
- Enhance the template for the pipeline to communicate parameter information required for the `webapp-develop` stack. 
- Update the `pipeline-webapp-develop` stack for the pipeline to supply parameter information, and verify that the `webapp-develop` stack is provisioned successfully

```
# Copy pipeline.yaml to templates/pipeline.yaml
# Copy with-subnets-pipeline-parameters.example.json to templates/with-subnets-pipeline-parameters.json
# Edit templates/with-subnets-pipeline-parameters.json and provide the subnet information
# Update the stack to provision the pipeline

$ aws cloudformation update-stack \
    --stack-name pipeline-webapp-develop \
    --template-body file://templates/pipeline.yaml \
    --parameters file://templates/with-subnets-pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Add an [Elastic Load Balancer](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html) to the template
- Change the template output to print the load balancer DNS address. Verify that the website is available at the published DNS address
- Commit the changes and move on to [kata-4](../kata-4/HOW-TO.md)
