- Remember to commit changes to the template to version control on the `develop` branch, and push changes to the `remote` to provision the `webapp-develop` stack

```
$ git add templates/template.yaml
$ git commit -m "Story 3 (work-in-progress)"
$ git push origin develop

```

- Add a [Lifecycle Configuration] to the template
- Add an [Auto Scaling Group] to the template 
    - Enhance the template for the pipeline to communicate parameter information required for the `webapp-develop` stack (specify values for `SubnetIds`, `DesiredCapacity` and other `Parameters`)
    - Update the `pipeline-webapp-develop` stack for the pipeline, and verify that the `webapp-develop` stack is provisioned successfully 
- Add an [Elastic Load Balancer] to the template
    - Change the template output to print the load balancer DNS address
    - Verify that the website is available at the published DNS address
- Commit the changes and move on to [kata-4](../kata-4/HOW-TO.md)
