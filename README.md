# Dockerized MERN Application Deployment on AWS ECS

A hands-on project demonstrating how to containerize a MERN application using Docker and deploy it to AWS using Amazon ECS. This project focuses on modern containerization practices, image management with Amazon ECR, and cloud-based container orchestration.

---

## Overview

This project showcases the complete workflow of deploying a Dockerized application on AWS. The application is containerized using Docker, the image is stored in Amazon ECR, and deployed using Amazon ECS. The project provides practical experience with containerization, cloud deployment, and AWS container services.

---

## Tech Stack

- Docker
- Amazon ECS
- Amazon ECR
- AWS IAM
- Node.js
- Express.js
- React.js

---

## AWS Services Used

| Service | Purpose |
|---------|---------|
| Amazon ECS | Container orchestration and deployment |
| Amazon ECR | Private Docker image repository |
| AWS IAM | Access and permission management |

---

## Project Architecture

```text
Local Machine
      │
      ▼
Docker Build
      │
      ▼
Amazon ECR
      │
      ▼
Amazon ECS
      │
      ▼
Running Container
```

---

## Features

- Containerized a full-stack application using Docker.
- Built optimized Docker images using multi-stage builds.
- Pushed Docker images to Amazon Elastic Container Registry (ECR).
- Deployed containers using Amazon Elastic Container Service (ECS).
- Configured IAM permissions required for ECS and ECR.
- Gained hands-on experience with cloud-native deployment workflows.
- Followed containerization best practices for consistent deployments.

---

## Project Structure

```
Docker-AWS/
│
├── backend/
├── frontend/
├── Dockerfile
├── .dockerignore
└── README.md
```

---

## Prerequisites

- Docker Desktop
- AWS Account
- AWS CLI
- Amazon ECS
- Amazon ECR
- Node.js (optional for local development)

---

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/Nitin-777/Docker-AWS.git
cd Docker-AWS
```

### Build the Docker Image

```bash
docker build -t docker-aws .
```

### Run the Container

```bash
docker run -p 3000:3000 docker-aws
```

---

## AWS Deployment Workflow

1. Build the Docker image locally.
2. Authenticate Docker with Amazon ECR.
3. Push the Docker image to Amazon ECR.
4. Create an ECS Cluster.
5. Create an ECS Task Definition.
6. Create an ECS Service.
7. Deploy the container on Amazon ECS.

---

## Learning Outcomes

Through this project, I gained practical experience in:

- Docker containerization
- Multi-stage Docker builds
- Docker image management
- Amazon Elastic Container Registry (ECR)
- Amazon Elastic Container Service (ECS)
- AWS Identity and Access Management (IAM)
- Container orchestration concepts
- Cloud deployment workflows
- Production-ready container deployment practices

---

## Future Improvements

- Deploy using CI/CD pipelines with GitHub Actions.
- Add monitoring using Amazon CloudWatch.
- Implement Infrastructure as Code using Terraform.
- Deploy multiple containers using Docker Compose.
- Add automated testing before deployment.

---

## Author

**Nitin Sharma**

- GitHub: https://github.com/Nitin-777
- LinkedIn: https://linkedin.com/in/nitinsharma007
