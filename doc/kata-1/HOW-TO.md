
Story 1: Deploy web application to an EC2 instance

- (optional) You may choose to clone this repository (or your fork of it). Alternatively, create a local repository from scratch
- Create a first template (using either YAML or JSON formats)

```
$ mkdir templates
$ touch templates/template.yaml
# Edit the template using your favourite text editor to implement the first story 

```

- (optional) You can create a service role for CloudFormation. See [here](../../service-role/HOW-TO.md) for instructions.

- Create the stack using the template. Repeat the actions below as needed to create the stack successfully.

```
# Create the stack (without a service role assigned)
$ aws cloudformation create-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml 
    
# (optional) You may choose to assign a service role
# Create the stack (with a service role assigned)
$ aws cloudformation create-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml \
    --role-arn arn:aws:iam::<AWS-ACCOUNT-ID>:role/AWS-CloudFormation-ServiceRole

# Wait for stack creation to complete
$ aws cloudformation wait stack-create-complete \
    --stack-name webapp-dev

# Describe stack events    
$ aws cloudformation describe-stack-events \
    --stack-name webapp-dev

# Describe the stack
$ aws cloudformation describe-stacks \
    --stack-name webapp-dev
    
# Update the stack
$ aws cloudformation update-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml
    
# Wait for stack update to complete
$ aws cloudformation wait stack-update-complete --stack-name webapp-dev    

# Delete stack (if needed)
$ aws cloudformation delete-stack \
    --stack-name webapp-dev

```  

- Verify that the web server is running at the published IP address (available as a stack output)

```    
# Print the only output value from the stack
$ aws cloudformation describe-stacks \
    --stack-name webapp-dev \
    --query "Stacks[0].Outputs[0].OutputValue" \
    --output text

```

- Commit the template to version control

```
$ git checkout -b develop
$ git add templates/template.yaml
$ git commit -m "story-1 (work-in-progress)"
$ git push origin develop

```

- onwards to [kata-2](../kata-2/HOW-TO.md)