- Create the pipeline to deploy the stack off the `develop` branch

```
# Copy templates/pipeline-parameters.example.json to templates/pipeline-parameters.json
# Edit templates/pipeline-parameters.json and provide the repository owner and personal access token from Github

# Create a stack to provision the pipeline in CodePipeline
$ aws cloudformation create-stack \
    --stack-name pipeline-webapp-develop \
    --template-body file://templates/pipeline.yaml \
    --parameters file://templates/pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Ensure that the pipeline runs successfully and deploys the CloudFormation stack named `webapp-develop`. Pay attention to the caveats below:
    - If the pipeline is not provisioned successfully, you may need to delete and re-create the stack for the pipeline
    - The stack for the pipeline will fail to delete the "ArtifactStoreBucket", if the Source action ran successfully and copied any files into the bucket. If this is the case, delete the S3 bucket directly, and re-attempt deleting the stack for the pipeline.
- Introduce a `DeletionPolicy` attribute of `Retain` on the `ArtifactStoreBucket` and update the stack
- Delete the stack created earlier by hand (`webapp-dev`)

```
$ aws cloudformation delete-stack \
    --stack-name webapp-dev
    
```

- From this point onwards, all template changes will be deployed to the stack using the pipeline, when changes are pushed to the `develop` branch. Remember to commit changes to a template on the `develop` branch, and push changes to the `remote` to trigger an update to the stack  

