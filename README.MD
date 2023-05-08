#Best Match API

This API is built using Amazon Web Services (AWS) and utilizes several AWS services including API Gateway, Lambda, Cognito, RDS Proxy, and RDS.

###AWS Services
API Gateway

API Gateway is a fully managed service that makes it easy for developers to create, publish, maintain, monitor, and secure APIs at any scale.

###AWS Lambda

AWS Lambda is a compute service that lets you run code without provisioning or managing servers. Lambda automatically scales your application in response to incoming requests, allowing you to focus on your application logic.

###Amazon Cognito

Amazon Cognito is a fully managed identity service that makes it easy to add user sign-up, sign-in, and access control to your web and mobile apps.

###RDS Proxy

Amazon RDS Proxy is a fully managed, highly available database proxy for Amazon Relational Database Service (RDS) that makes applications more scalable, more resilient to database failures, and more secure.

###Amazon RDS

Amazon RDS makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups.

###Authentication and Authorization

This API uses OAuth2 authentication and authorization through Amazon Cognito. Users must sign up for an account and log in to access the API. Once authenticated, users are authorized to perform specific actions based on their role.

###Database

This API uses Amazon RDS as the PostgreSQL database. Amazon RDS makes it easy to set up, operate, and scale a relational database in the cloud. It provides cost-efficient and resizable capacity while automating time-consuming administration tasks such as hardware provisioning, database setup, patching, and backups.

###API Endpoints

The following API endpoints are available:

    /get-best-match - Allows users to create an account and retrieve their profile information.
        - query parameters - jobId: integer(required)


###Architecture Diagram:

![image](https://user-images.githubusercontent.com/66978679/236876612-a80194ba-7c95-48be-b76b-363a4e5cd47d.png)
