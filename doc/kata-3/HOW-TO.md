- Remember to commit changes to the template to version control on the `develop` branch, and push changes to the `remote` to provision the `webapp-develop` stack

```
$ git add templates/template.yaml
$ git commit -m "Story 3 (work-in-progress)"
$ git push origin develop

```

- Obtain the subnet Ids for public subnets in the default VPC. These are required for the Auto Scaling Group and load balancer

```
$ aws ec2 describe-subnets \
    --query "Subnets[*].SubnetId"

```

- Add a [Lifecycle Configuration](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html) to the template
- Add an [Auto Scaling Group](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-group.html) to the template 
    - Remove the EC2 instance for thw webserver, which is no longer needed 
    - Enhance the template for the pipeline to communicate parameter information required for the `webapp-develop` stack (specify values for `SubnetIds` and `DesiredCapacity`)
    - Update the `pipeline-webapp-develop` stack for the pipeline, and verify that the `webapp-develop` stack is provisioned successfully
- Add an [Elastic Load Balancer](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb.html) to the template

```
$ aws cloudformation update-stack \
    --stack-name pipeline-webapp-develop \
    --template-body file://templates/pipeline.yaml \
    --parameters file://templates/with-subnets-pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Change the template output to print the load balancer DNS address. Verify that the website is available at the published DNS address
- Commit the changes and move on to [kata-4](../kata-4/HOW-TO.md)
