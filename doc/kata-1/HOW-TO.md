
Story 1: Deploy web application to an EC2 instance

- Create a first template (using either YAML or JSON formats)

```
$ touch templates/template.yaml
# Edit the template using your favourite text editor to implement the first story 

```

- Create the stack using the template

```
# Create the stack
$ aws cloudformation create-stack \
    --stack-name webapp-dev \
    --template-body file://templates/template.yaml

# Wait for stack creation to complete
$ aws cloudformation wait stack-create-complete \
    --stack-name webapp-dev

# Describe stack events    
$ aws cloudformation describe-stack-events \
    --stack-name webapp-dev

# Describe the stack
$ aws cloudformation describe-stacks \
    --stack-name webapp-dev

# Print the only output value from the stack
$ aws cloudformation describe-stacks \
    --stack-name webapp-develop \
    --query "Stacks[0].Outputs[0].OutputValue" \
    --output text

# Delete a stack
$ aws cloudformation delete-stack \
    --stack-name webapp-dev

```

- Verify that the web server is running at the advertised IP address (available as a stack output)
- Commit the template to version control
- On to [kata-2](../kata-2/HOW-TO.md)