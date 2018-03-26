Story 2: Create a pipeline for Continuous Deployment

- Create a pipeline to deploy the stack off the `develop` branch

```
# Copy pipeline.yaml to templates/pipeline.yaml
# Copy pipeline-parameters.example.json to templates/pipeline-parameters.json
# Edit templates/pipeline-parameters.json and provide the repository owner and personal access token from Github
# Create a stack to provision the pipeline in CodePipeline

$ aws cloudformation create-stack \
    --stack-name pipeline-webapp-develop \
    --template-body file://templates/pipeline.yaml \
    --parameters file://templates/pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Ensure that the pipeline runs successfully and deploys the CloudFormation stack named `webapp-develop`
- Delete the stack created earlier by hand (`webapp-dev`)

```
$ aws cloudformation delete-stack \
    --stack-name webapp-dev
    
```

- All subsequent template changes will be deployed to the stack by the pipeline, on changes being pushed to the `develop` branch
- onwards to [kata-3](../kata-3/HOW-TO.md) 

