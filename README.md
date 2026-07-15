# Docker AWS Deployment

A simple project demonstrating how to containerize an application using Docker and deploy it on an AWS EC2 instance. It covers the complete workflow from building a Docker image locally to running the application in the cloud.

## Technologies Used

* Docker
* AWS EC2
* Node.js
* Linux (Ubuntu)
* Git & GitHub

## Project Structure

```text
.
├── backend/
├── frontend/
├── Dockerfile
├── package.json
└── README.md
```

## Prerequisites

* Docker
* AWS Account
* EC2 Instance
* Git

## Getting Started

### Clone the Repository

```bash
git clone https://github.com/Nitin-777/Docker-AWS.git
cd Docker-AWS
```

### Build the Docker Image

```bash
docker build -t docker-aws-app .
```

### Run the Container

```bash
docker run -d -p 80:3000 docker-aws-app
```

> Replace `3000` with your application's internal port if it is different.

## Deploying to AWS EC2

1. Launch an Ubuntu EC2 instance.
2. Allow inbound traffic for ports **22 (SSH)** and **80 (HTTP)**.
3. Connect to the instance:

```bash
ssh -i <your-key.pem> ubuntu@<EC2_PUBLIC_IP>
```

4. Install Docker:

```bash
sudo apt update
sudo apt install docker.io -y

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker $USER
```

Log out and reconnect to apply the group changes.

5. Clone the repository:

```bash
git clone https://github.com/Nitin-777/Docker-AWS.git
cd Docker-AWS
```

6. Build and run the application:

```bash
docker build -t docker-aws-app .
docker run -d -p 80:3000 docker-aws-app
```

## Access the Application

Open your browser and navigate to:

```text
http://<EC2_PUBLIC_IP>
```

## Useful Docker Commands

```bash
docker images
docker ps
docker logs <container_id>
docker stop <container_id>
docker rm <container_id>
docker rmi <image_id>
```

## Learning Outcomes

* Containerizing applications using Docker
* Creating multi-stage Docker builds
* Managing Docker containers
* Deploying applications on AWS EC2
* Running containerized applications in a cloud environment

## License

This project is intended for learning and educational purposes.
