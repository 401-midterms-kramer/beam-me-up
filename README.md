# Beam-me-up
## A project for hacky heroku replacement
### WARNING: This project was made for a school project and is considered extrmely insecure by its authors see below for details*

### Requirements
  - AWS account
  - node/npm
  - express server github repo you want to see live


### Getting started 
  - open AWS account
    ![img](resources/securitygroups.png)
  - Create an IAM user for programmatic access (the aws-sdk will pull creds from your local computer)
  - leave that window open while you run aws configure from your local development command line
  - from local shell type 
  ```
  aws configure
  ```
  - you will see the following prompt
  ```
AWS Access Key ID [****************ESHN]: 
AWS Secret Access Key [****************Em9v]: 
Default region name [us-west-2]: 
Default output format [text]: 
```
  - enter your access key when prompted and same for your secret access key
  - region should be us-west-2 for this demo
  - clone down this repo locally 
  ```
  git clone https://github.com/401-midterms-kramer/beam-me-up
  ```
  - modify the instances security group rules to match these (port 22 rule is optional)
![img](resources/securitygroups.png)

* This project uses basic authentication to validate permission against the server. The intention was to make this very easy to interact with for the end user, as a result the code for this repository has credentials hard coded. We ran out of time to automate short term credentials on this project and left a default user with username:password combo of lee:lee. We are well aware of how bad that is.