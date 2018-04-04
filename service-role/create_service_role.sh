#!/usr/bin/env bash

aws iam create-role \
    --role-name AWS-CloudFormation-ServiceRole \
    --assume-role-policy-document file://trust-policy.json

aws iam put-role-policy \
    --role-name AWS-CloudFormation-ServiceRole \
    --policy-name cloudformation-service-access-to-resources \
    --policy-document file://permissions-policy.json
