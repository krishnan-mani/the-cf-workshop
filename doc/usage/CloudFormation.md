- Illustrates the various API actions available with CloudFormation

Create a stack
=====

```
$ aws cloudformation create-stack \
    --stack-name webapp-dev \
    --template-body file://template.yaml \
    --parameters \
    ParameterKey=InstanceSubnets,ParameterValue=subnet-1234abcd

```