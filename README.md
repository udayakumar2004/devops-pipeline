# 🚀 DevOps CI/CD Pipeline with Monitoring

## 📌 Project Overview

This project demonstrates a complete end-to-end DevOps pipeline for deploying a React application using modern tools and cloud infrastructure. The system automates the build, packaging, deployment, and monitoring processes to achieve a production-ready workflow.

---

## 🧰 Tech Stack

* Version Control: GitHub
* CI/CD: Jenkins
* Containerization: Docker
* Container Registry: Docker Hub
* Cloud Platform: AWS EC2
* Web Server: Nginx
* Monitoring: Uptime Kuma
* Alerting: Email (SMTP)

---

## ⚙️ Architecture Flow

GitHub → Jenkins → Docker Build → Docker Hub → AWS EC2 → Application Deployment → Monitoring → Email Alerts

---

## 📁 Project Structure

* Dockerfile
* docker-compose.yml
* build.sh
* deploy.sh
* Jenkinsfile
* nginx.conf
* .dockerignore
* .gitignore

---

## 🔄 CI/CD Workflow

1. Developer pushes code to GitHub repository (dev branch).
2. Jenkins detects the change and triggers the pipeline.
3. Jenkins builds a Docker image using the Dockerfile.
4. The image is pushed to Docker Hub.
5. Jenkins connects to the EC2 instance using SSH.
6. Existing container is stopped and removed.
7. A new container is created using the latest image.
8. Application becomes live on port 80.

---

## 🐳 Dockerization

The application is containerized using Docker and served through Nginx for efficient static file delivery. This ensures consistency across environments and simplifies deployment.

---

## ☁️ AWS Deployment

* Application is deployed on an EC2 instance.
* Security Groups are configured to allow:

  * HTTP (Port 80) for public access
  * SSH (Port 22) for secure login
* Docker is installed on the instance to run containers.

---

## 🤖 Jenkins Automation

* Jenkins is installed on a separate EC2 instance.
* Pipeline is configured using Jenkinsfile.
* Credentials are managed securely:

  * Docker Hub credentials
  * SSH key for EC2 access
* Pipeline stages include:

  * Code checkout
  * Docker build
  * Docker push
  * Deployment to EC2

---

## 📊 Monitoring Setup

Monitoring is implemented using Uptime Kuma.

* Tracks application availability via HTTP checks
* Displays real-time status (UP/DOWN)
* Provides a simple dashboard for monitoring health

---

## 📧 Alerting System

Email alerts are configured using SMTP.

* Sends notification when the application goes down
* Sends recovery notification when the application is back online
* Ensures quick response to downtime

---

## ✅ Key Features

* Fully automated CI/CD pipeline
* Containerized application deployment
* Remote deployment via SSH
* Real-time uptime monitoring
* Email alerting system
* Production-ready architecture

---

## 🧠 Learning Outcomes

* Understanding of CI/CD pipeline design
* Hands-on experience with Docker and containerization
* Deployment on AWS cloud infrastructure
* Jenkins pipeline configuration and automation
* Monitoring and alerting implementation
* Debugging real-world DevOps issues

---

## 🌐 Deployment Details

* Application is accessible via EC2 Public IP on HTTP (Port 80)
* Docker image is stored in Docker Hub repository
* Pipeline is triggered automatically on code updates

---

## 🎯 Conclusion

This project successfully demonstrates a complete DevOps lifecycle, from code integration to deployment and monitoring. It reflects real-world practices used in production environments and showcases the ability to design, automate, and manage scalable systems.

---
