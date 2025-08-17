# 0G-LABS-STORAGE-NODE-RUN-GUIDE-BY-Malix777
# Introduction
🚀 Storage Nodes = Data Backbone!
Unlike validator nodes, they don’t secure blocks — they store & serve data.
📂 From AI models to big datasets, they keep everything persistent, available & resilient.
                      
 # 👻 0G Storage Node Guide ☠️
## 🖥️ Minimum System Requirements

🧠 Memory: 32 GB RAM

🖥️ CPU: 8 cores

💾 Disk: 500 GB / 1 TB NVMe SSD (adjust if needed)

🌐 Bandwidth: 100 Mbps (Download/Upload)

## 💡Pre-Setup

1.🔗 Add 0G-Galileo-Testnet Chain:

     https://chainscan-galileo.0g.ai/

2.💧 Get Testnet Tokens:

     https://faucet.0g.ai/

# 🔧 Install Dependencies

```
sudo apt-get update && sudo apt-get upgrade -y
```

```
sudo apt install curl iptables build-essential git wget lz4 jq make cmake gcc nano automake autoconf tmux htop nvme-cli libgbm1 pkg-config libssl-dev libleveldb-dev tar clang bsdmainutils ncdu unzip libleveldb-dev screen ufw -y
```

 # 🎯Install rustup
 ```
curl https://sh.rustup.rs -sSf | sh
```

```
source $HOME/.cargo/env
```

🔁Check version

```
rustc --version
```

###  ⚙️Install Go
```
wget https://go.dev/dl/go1.24.3.linux-amd64.tar.gz && \
sudo rm -rf /usr/local/go && \
sudo tar -C /usr/local -xzf go1.24.3.linux-amd64.tar.gz && \
rm go1.24.3.linux-amd64.tar.gz && \
echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc && \
source ~/.bashrc
```

🔁check version

```
go version
```

# Clone the Repository

```
git clone https://github.com/0glabs/0g-storage-node.git
```

```
cd 0g-storage-node && git checkout v1.1.0 && git submodule update --init
```

* Build in release mode 

```
cargo build --release
```

# Set Configrations

```
rm -rf $HOME/0g-storage-node/run/config.toml
```
```
curl -o $HOME/0g-storage-node/run/config.toml https://raw.githubusercontent.com/Mayankgg01/0G-Storage-Node-Guide/main/config.toml
```


* Add Your Wallet's Private KEY in `config.toml`, ❗❗Dont Add **0X** before the key:

-open and go to `miner_key` and add your pvt key:

```
nano $HOME/0g-storage-node/run/config.toml
```

