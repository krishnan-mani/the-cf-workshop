- Create a pipeline to deploy the `master` branch to create a stack in the `live` environment
    - This pipeline will create a `change-set` against the `webapp-master` stack 
    - This pipeline will then notify the designated email 
    - Changes will only be deployed to the stack when approved (the pipeline will execute the corresponding change-set)

```
$ aws cloudformation create-stack \
    --stack-name pipeline pipeline-webapp-master \
    --template-body file://templates/approval-pipeline.yaml \
    --parameters file://templates/approval-pipeline-parameters.json \
    --capabilities CAPABILITY_IAM

```

- Introduce `Conditions` to scale environments independently
- Introduce `Mappings` for the choice of `ImageId` by `AWS::Region` 
