- You may create a service role for CloudFormation using the scripts here and the illustrative trust and permissions policy
- _CAUTION_: Make sure that the permissions policy statement follows best security practice. 
 
```
$ ./create_service_role.sh
 
```

- The response contains the ARN in the format "arn:aws:iam::<AWS-ACCOUNT-ID>:role/AWS-CloudFormation-ServiceRole"