# Nexus CLI Node (Dockerized)

This project provides a simple Docker setup to run the [Nexus CLI node](https://github.com/nexus-xyz/nexus-cli) using the official binary release.

> - ✅ No need to install Ubuntu WSL or VM on your Device.
> - ✅ No need to install Rust or compile from source — just use Docker.
> - ✅ Work with all OS
---

## Download Docker Desktop
Download from official [Docker](https://www.docker.com/products/docker-desktop/) website, and Install like your fav game :0


---

## 📦 Included

- Base image: `ubuntu:24.04`
- Downloads the latest Nexus CLI binary 
- Runs `nexus-cli` in a minimal container
- Clean and customizable

---

## 🚀 Quick Start

note: `I tried it on windows 10`

### 1. Open your Docker & Terminal
![Docker](https://i.postimg.cc/bv41WxKp/Screenshot-1361.png)

### 2. Create nexus folder, Download Dockerfile and build the image

```shell
mkdir nexus; cd nexus; wget https://raw.githubusercontent.com/prolinkmoon/Nexus-prover/main/Dockerfile -OutFile Dockerfile
```
Build the image
```shell
docker build -t nexus-cli .
```
### 3. Run Nexus CLI node 
```shell
docker run -it nexus-cli start --node-id <your-node-id>
```
### 4. Stop node, Start node, and Delete Container / Node
![Docker](https://i.postimg.cc/Y0F3SnBX/Screenshot-1362.png)

---

## 👨‍👩‍👦‍👦 Run Multiple node

![Docker](https://i.postimg.cc/QdT2kRyN/Screenshot-1366.png)

> ⚠️ 
> - 1 nexus CLI node need `~4-6gb RAM`
> - It's possible to run multiple nodes, provided your device has enough memory.


