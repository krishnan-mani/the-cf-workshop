- Add a lifecycle configuration to the template and update the stack

```
$ aws cloudformation update-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml

```

- Add an Auto Scaling Group to the template and update the stack, specifying a subnet, desired capacity and other `Parameters`

```
$ aws cloudformation update-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml \
    --parameters \
    ParameterKey=InstanceSubnets,ParameterValue=subnet-123abc12 \
    ParameterKey=DesiredCapacity,ParameterValue=2
    
```

- Add an Elastic Load Balancer to the template and update the stack
    - Change the template output to print the load balancer DNS address
    - Verify that the website is available at the published DNS address
    
```
$ aws cloudformation update-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml

```

