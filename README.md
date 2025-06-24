# 🛰️ Nexus Prover Node

Contribute computing power and earn NEX Points by supporting the Nexus protocol.

This guide walks you through multiple ways to run a Nexus prover node — using browser tabs, CLI, or remote VPS.

---

## 💡 Multi-Device Ready

You can run nodes on:

- Desktop and laptop computers
- VPS or cloud servers
- Mobile phones
- Multiple browser tabs or terminals

All nodes can be linked and managed from a single Nexus account.

---

## 🔧 Environment Setup

### For Windows Users

Install **WSL (Windows Subsystem for Linux)** and follow the Linux-based instructions in the Ubuntu terminal inside WSL.  
📘 Guide: [Install Linux on Windows](https://www.youtube.com/watch?v=gTf32sX9ci0)

---

### For VPS Users

You can use a virtual private server (VPS) to run your node 24/7.  
Recommended VPS providers:

- [Contabo](https://contabo.com)
- [Hostbrr](https://my.hostbrr.com/)
- [Hetzner](https://hetzner.com/cloud)
- [DigitalOcean](https://digitalocean.com)


---

## 🧾 Create a Nexus Account

1. Visit [https://app.nexus.xyz](https://app.nexus.xyz)
2. Register and connect your EVM-compatible wallet
3. Follow the instructions to add and manage nodes
4. Earn NEX Points by contributing compute power

---

## 🌐 Run in Web Browser

You can launch prover nodes directly from the Nexus dashboard using your browser.

🔗 [https://app.nexus.xyz](https://app.nexus.xyz)

- No installation required
- Compatible with Chrome, Brave, and similar browsers
- You can open multiple tabs for parallel contributions
- All sessions sync to your Nexus account

---

## ⚡️ One-Click Deployment

1. Sign up at [Mintair](https://mintair.xyz/onboarding?ref=C2IJ-2667)
2. Choose a pre-configured Nexus node VPS
3. Launch with a single click — no manual setup needed

---

## 🧪 Run Browser-Based Node on VPS

You can also install a graphical interface and Chromium browser on a Linux VPS to run browser nodes remotely.

📘 Guide: [Install Chromium on Linux VPS (Docs still being written .. )]()

- Supports multiple tabs
- Works with remote desktops (VNC, xRDP, XFCE)
- Good for testing — performance may vary

---

## 🛠️ Run Prover Node via CLI

> ⚠️ Requires basic knowledge of the Linux terminal

---

### 1. Install Required Dependencies

```bash
sudo apt update && sudo apt upgrade -y
sudo apt install screen curl build-essential pkg-config libssl-dev git-all protobuf-compiler -y
```

#### Install Rust:
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
source $HOME/.cargo/env
rustup target add riscv32i-unknown-none-elf
```

### 2. Launch CLI Prover
```bash
screen -S nexus
```
Download and install the CLI:
```bash
curl https://cli.nexus.xyz/ | sh
```
### 3. Start the Node
```bash
source ~/.bashrc
nexus-network start --node-id your-node-id
```
Replace your-node-id with a valid Node ID (see next section).

## 🔑 Create a Node ID
#### Option 1 — From the Web
Go to: https://app.nexus.xyz/nodes

Click Add Node → Add CLI Node

Copy the generated Node ID

Use that in your CLI with --node-id

#### Option 2 — Using CLI
Register your wallet:
```bash
nexus-network register-user --wallet-address your-wallet-address
```
Generate a Node ID:
```bash
nexus-network register-node
```
Start your node:
```bash
nexus-network start --node-id your-node-id
```

## ➕ Run Multiple CLI Nodes
You can run multiple CLI nodes in separate terminal sessions. For example:
```bash
screen -S nexus2
nexus-network register-node
nexus-network start --node-id second-node-id
```
Monitor system usage with:
```bash
sudo apt install htop
htop
```

---

## 🧩 GLIBC Compatibility Issue
Some systems may return the following error:

```bash
nexus-network: /lib/x86_64-linux-gnu/libc.so.6: version `GLIBC_2.39' not found
```
#### Check current version:
```bash
ldd --version
```

If you don’t have 2.39, install it manually:
```bash
sudo apt install gawk bison gcc make wget tar
wget https://ftp.gnu.org/gnu/glibc/glibc-2.39.tar.gz
tar -zxvf glibc-2.39.tar.gz
cd glibc-2.39 && mkdir glibc-build && cd glibc-build
../configure --prefix=/opt/glibc-2.39
make -j$(nproc)
sudo make install
```

Run CLI with Custom GLIBC Loader
```bash
/opt/glibc-2.39/lib/ld-linux-x86-64.so.2 \
--library-path /opt/glibc-2.39/lib:/lib/x86_64-linux-gnu:/usr/lib/x86_64-linux-gnu \
/root/.nexus/bin/nexus-network register-user --wallet-address your-wallet
```
If unsure about the binary path, run:
```bash
which nexus-network
```

---

### 📢 Need Help?
Follow updates and community discussions on: https://twitter.com/prolinkmoon

