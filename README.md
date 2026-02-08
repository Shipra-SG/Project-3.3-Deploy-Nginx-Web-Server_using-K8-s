# Deploy Nginx Web Server using Docker & Kubernetes (Minikube on AWS EC2)

## Project Overview

This project demonstrates how to deploy a **custom Nginx web server** using **Docker** and **Kubernetes** on an **AWS EC2 instance**.
The goal of this project is to understand the complete flow from building a Docker image to deploying it on Kubernetes and exposing it via a service.

This project is created as **hands-on Kubernetes practice for beginners**.

---

## Tools & Technologies Used

* **AWS EC2**
* **Docker**
* **Kubernetes**
* **Minikube**
* **Nginx**
* **Git & GitHub**
* **Linux (Ubuntu)**

---

## Project Structure

```
.
├── Dockerfile
├── nginx.conf
├── nginx-pod.yaml
├── nginx-service.yaml
└── README.md
```

---

## Project Steps

### 1️⃣ Setup AWS EC2 Instance

* Launched an Ubuntu EC2 instance
* Installed required tools:

  * Docker
  * kubelet
  * kubectl
  * Minikube

---

### 2️⃣ Clone the Repository

```bash
git clone <your-repo-url>
cd <repo-name>
```

---

### 3️⃣ Create Custom Nginx Configuration

* Created a custom `nginx.conf` file
* Modified the default Nginx configuration to serve a custom web page

---

### 4️⃣ Create Dockerfile

* Created a Dockerfile to build a **custom Nginx image**
* The Dockerfile uses the official Nginx base image and copies the custom configuration

```dockerfile
FROM nginx: latest

WORKDIR /app

COPY nginx.conf /app
```

---

### 5️⃣ Build Docker Image

```bash
docker build -t custom-nginx .
```

---

### 6️⃣ Run Nginx Container (Optional Test)

```bash
docker run -d -p 80:80 custom-nginx
```
✔️ Verified Nginx web page is accessible via browser

---

### 7️⃣ Start Minikube

```bash
minikube start
```

---

### 8️⃣ Deploy Nginx as a Kubernetes Pod

* Created `nginx-pod.yaml`

```bash
kubectl apply -f nginx-pod.yaml
```

---

### 9️⃣ Expose Pod using Kubernetes Service

* Created `nginx-service.yaml` (NodePort type)

```bash
kubectl apply -f nginx-service.yaml
```

---

### 🔟 Access Application from Browser

```bash
http://<public-IP>:80
```
✔️ Nginx web page is successfully accessible through the browser

---

## Verification

* Pod status checked using:

```bash
kubectl get pods
```

* Service status checked using:

```bash
kubectl get svc
```

* Application accessible via **NodePort Service**

---

## Key Learnings

* How Docker images are built using Dockerfile
* Running Nginx inside a container
* Kubernetes Pod creation
* Exposing applications using Kubernetes Services
* Using Minikube on AWS EC2 for Kubernetes practice

---

## Conclusion

This project helped me understand the **end-to-end process of containerizing an application and deploying it on Kubernetes**.
It strengthened my fundamentals in **Docker, Kubernetes, and cloud-based deployments**.

---

## Author

**Shipra**
Learning DevOps | Docker | Kubernetes | AWS
