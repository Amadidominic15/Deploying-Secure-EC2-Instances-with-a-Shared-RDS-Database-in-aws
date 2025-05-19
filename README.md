#  Deploying Secure EC2 Instances with a Shared RDS Database
we will walk through the process of deploying secure EC2 instances connected to a shared database on AWS using Terraform and automating the deployment with github actions

## Project overview
This project involves deploying secure EC2 instances connected to a shared database on AWS using Terraform 
I configured a Virtual Private Public Cloud (VPC), spin up EC2 instances, set up an RDS database, and distribute incoming traffic with an Application Load Balancer (ALB).
My focus was on adhering to best practices for security, scalability, and maintainability.

## Technologies
 ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) [![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?logo=amazon-web-services&logoColor=white)](#)
 ![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white) ![Linux](https://img.shields.io/badge/Linux_Bash_Scripting-FCC624?style=for-the-badge&logo=linux&logoColor=black)
 
## Cloud Technologies

- VPC
- Subnets
- Route Tables and Association
- Internet Gateway
- Network Interface
- Security Groups
- Database (RDS mysql)
