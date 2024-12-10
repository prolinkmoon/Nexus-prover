# Nexus Testnet Prover
### Easy Guide to run Testnet Nexus prover with VPS / Local machine on Ubuntu 22.0

Access your VPS with putty / terminal you like it!

then, use following command:
```bash
sudo apt update && sudo apt upgrade -y
```
```bash
sudo apt install screen build-essential pkg-config libssl-dev git-all -y
```
```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
Select 1 and enter

```bash
. "$HOME/.cargo/env"
```
```bash
rustup target add riscv32i-unknown-none-elf
```
```bash
cargo install --git https://github.com/nexus-xyz/nexus-zkvm cargo-nexus --tag 'v0.2.4'
```
```bash
cargo nexus new nexus-project
```
```bash
cd nexus-project
```
```bash
screen -S nexus
```
```bash
sudo apt install -y protobuf-compiler
```
```bash
curl https://cli.nexus.xyz/ | sh
```
- type Y and enter
- input your Prover ID / UID
- to detach terminal. CTRL + A + D
- Done! and close the terminal and see the point you earned.

* If you wanna open the screen / see the log again, use following command:
```bash
screen -r nexus
```


Happy Testeing 😁
