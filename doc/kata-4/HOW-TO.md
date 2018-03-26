
Story 4: Deploy environments for both `dev` and `live`

- Provision a pipeline to deploy the `master` branch to create a stack in the `live` environment
    - This pipeline will create a change-set against the `webapp-master` stack 
    - This pipeline will then notify the designated email 
    - Changes will only be deployed to the stack when approved (the pipeline will execute the corresponding change-set)

```
$ aws cloudformation create-stack \
    --stack-name pipeline pipeline-webapp-master \
    --template-body file://templates/approval-pipeline.yaml \
    --parameters file://templates/approval-pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Evolve the environments by committing changes to the `develop` branch and deploying to the `webapp-develop` stack
    - Changes are merged onto `master` from the `develop` branch when completed
    - Review the change-set on the `webapp-master` stack and approve the same to deploy to the `live` environment
- Introduce `Conditions` to scale environments independently
- Introduce `Mappings` for the choice of `ImageId` by `AWS::Region` 
