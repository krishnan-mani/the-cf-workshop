
Story 4: Deploy environments for both `dev` and `live` and customise the environments

- Enhance the template to introduce a parameter that designates the environment as either `dev` or `live`  

- Provision a pipeline to deploy the `master` branch to create a stack in the `live` environment
    - This pipeline will create a change-set against the `webapp-master` stack 
    - This pipeline will then notify the designated email 
    - Changes will only be deployed to the stack when approved (the pipeline will execute the corresponding change-set)

```
# Copy approval-pipeline.yaml to templates/approval-pipeline.yaml
# Copy approval-pipeline-parameters.example.json to templates/approval-pipeline-parameters.json
# Edit templates/approval-pipeline-parameters.json to provide the parameter information
# Create a stack to provision the pipeline in CodePipeline

$ aws cloudformation create-stack \
    --stack-name pipeline-webapp-master \
    --template-body file://templates/approval-pipeline.yaml \
    --parameters file://templates/approval-pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Merge changes from `develop` branch onto `master` and push changes to the `remote`. Verify that the pipeline for the `live` environment can create and execute change-sets on the `webapp-master` stack
- Continue to evolve the environments by committing changes to the `develop` branch and deploying to the `webapp-develop` stack
    - Merge onto `master` from the `develop` branch as and when stories are completed and tested
    - Review the change-set on the `webapp-master` stack and approve the same to deploy to the `live` environment
    
- Introduce `Conditions` to scale environments independently
    - Specify different values for `MaxSize` and `MinSize` in the `dev` and `live` environments
