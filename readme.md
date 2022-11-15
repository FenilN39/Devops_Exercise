# ScanBuy Internship Task

Here are instruction for running files, for each task, Go to each folder and run commands to get the output.

# Task 1:  
- Docker folder
- Docker build -t intern .
- docker run --name intern-p 8080:80 -d -v/root/Internship/website/public:/usr/share/nginx/html/ intern 
- Note: Here -v <PWD path>:/usr/share/nginx/html/

# Task 2:
- Terraform folder
- Start localstack docker container using docker-compose file
- https://raw.githubusercontent.com/localstack/localstack/master/docker-compose.yml
- In terraform folder with main.tf file run ‘terraform init’
- Now run terraform apply 
- Go to localhost:4566/mynewbucket/index.html

# Task 3:
- Serverless folder
- Install serverless offline plugins : npm install serverless-offline --save-dev
- serverless deploy -v 
- serverless invoke local -f <function name>

# Task 4: What are a few other ways you can deploy a static website in AWS?
- S3 : We Done above
-- S3 accelerator
        -- S3 with CloudFront
- Aws Amplify Hosting
- EC2 deployment
- AWS ECS:
  --  Simple nginx docker image with static site and host on ECS (Managed By User)
- AWS Amplify : 
    -- Nginx Docker image with simple static site on Amplify (Managed By AWS)
