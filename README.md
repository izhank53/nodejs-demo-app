# Node.js Demo App

This is a simple demo application written in Node.js to demonstrate
how to create and run a basic web server.

This repository has been configured with Docker and GitHub Actions
to automate Docker image building and publishing to Docker Hub.

## Prerequisites

- Node.js 22 or above
- npm (Node Package Manager)
- Docker
- Git
- GitHub account
- Docker Hub account

## Getting Started

Clone this repository:

git clone https://github.com/izhank53/nodejs-demo-app.git

Navigate to the project directory:

cd nodejs-demo-app

Install dependencies:

npm install

Run the application:

npm start

Open your browser:

http://localhost:8080

## Docker

This project uses a Dockerfile to containerize the Node.js application.

### Build Docker Image

docker build -t nodejs-demo-app:latest .

### Run Docker Container

docker run -d --name nodejs-demo-app -p 8080:8080 nodejs-demo-app:latest

Open the application:

http://localhost:8080

## CI/CD Pipeline Using GitHub Actions

This project uses GitHub Actions to automate Docker image building
and publishing.

The workflow is located at:

.github/workflows/main.yml

### Pipeline Workflow

Whenever code is pushed to the main branch:

1. GitHub Actions triggers the workflow.
2. The repository code is checked out.
3. GitHub Actions authenticates with Docker Hub.
4. A Docker image is built using the project's Dockerfile.
5. The image is pushed to Docker Hub.

### GitHub Secrets

The following repository secrets are configured for authentication:

- DOCKERHUB_USERNAME
- DOCKERHUB_TOKEN

These secrets allow GitHub Actions to authenticate securely
without exposing Docker Hub credentials in the workflow file.

## Docker Hub

The Docker image is published to:

https://hub.docker.com/r/izhank53/nodejs-demo-app

Pull the latest image:

docker pull izhank53/nodejs-demo-app:latest

Run the published image:

docker run -d --name nodejs-demo-app-test -p 8081:8080 izhank53/nodejs-demo-app:latest

Access the application:

http://localhost:8081

## Technologies Used

- Node.js
- npm
- Docker
- GitHub
- GitHub Actions
- Docker Hub