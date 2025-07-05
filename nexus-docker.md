# Nexus CLI Node (Dockerized)

This project provides a simple Docker setup to run the [Nexus CLI node](https://github.com/nexus-xyz/nexus-cli) using the official binary release.

> - ✅ No need to install Ubuntu WSL or VM on your Device.
> - ✅ No need to install Rust or compile from source — just use Docker.

---

## Download Docker Desktop
Download from official [Docker]() website, and install. 


---

## 📦 Included

- Base image: `ubuntu:24.04`
- Downloads the latest Nexus CLI binary 
- Runs `nexus-cli` in a minimal container
- Clean and customizable

---

## 🚀 Quick Start

### 1. Download Dockerfile and build the image

```shell
mkdir nexus && cd nexus && wget 
git clone https://github.com/your-username/nexus-docker.git
cd nexus-docker

# Build the image
docker build -t nexus-cli .
```
### 2. Run Nexus CLI node 
```shell

```


