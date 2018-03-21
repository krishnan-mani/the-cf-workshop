Goal
====

- Deploy a two-tier web application to AWS, using best practices
- Provide multiple environments, including `dev` (for development) and `live` (for production). Each environment may be scaled independently.  
- Support the deployment of the application to a specified VPC network
- Use continuous deployment to support rapid evolution of application environments 

Planning
====

Participants spend a few minutes to identify tasks (managed as cards on a [board](https://trello.com/b/456iFZOm/the-cf-workshop))

Stories
====

- Story 1: Deploy web application to an EC2 instance 
- Story 2: Add an AutoScaling group and load balancer
- Story 3: Create a pipeline for Continuous Deployment
- Story 4: Deploy environments for both `dev` and `live`
- Story 5: Support deployment to a specified VPC