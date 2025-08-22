<div align="left">

#   **Introduction📔**

</div>


-----**Storage Nodes:**
Unlike Validator Nodes that focus on securing the blockchain itself, Storage Nodes focus on managing and serving data. They are the backbone of the network's data storage capabilities, ensuring persistence and availability for long-term data storage (e.g., training datasets, large AI models). By running a storage node, you'll contribute to the decentralized storage of 0G data, making it accessible and resilient.

<div align="center">

#  👻💀 **0G Storage Node Guide** 

</div>


# Device/System Requirements 💻


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
curl -o $HOME/0g-storage-node/run/config.toml https://raw.githubusercontent.com/Malix7777-cpu/0G-LABS-STORAGE-NODE-RUN-GUIDE-BY-Malix777/main/config.toml
```


* Add Your Wallet's Private KEY in `config.toml`, ❗❗Dont Add **0X** before the key:

-open and go to `miner_key` and add your pvt key:

```
nano $HOME/0g-storage-node/run/config.toml
```

# Create a Systemd Service File

```
sudo tee /etc/systemd/system/zgs.service > /dev/null <<EOF
[Unit]
Description=ZGS Node
After=network.target

[Service]
User=$USER
WorkingDirectory=$HOME/0g-storage-node/run
ExecStart=$HOME/0g-storage-node/target/release/zgs_node --config $HOME/0g-storage-node/run/config.toml
Restart=on-failure
RestartSec=10
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF
```

* Reload

```
sudo systemctl daemon-reload
```

* Enable

```
sudo systemctl enable zgs
```

* Start service

```
sudo systemctl start zgs
```

# 📡Managing Logs

```
sudo systemctl status zgs
```

* check Full Logs

```
tail -f ~/0g-storage-node/run/log/zgs.log.$(TZ=UTC date +%Y-%m-%d)
```

---

## ⛓️ Check Block & Sync Progress

```bash
bash <(curl -s https://raw.githubusercontent.com/Malix7777-cpu/0G-LABS-STORAGE-NODE-RUN-GUIDE-BY-Malix777/refs/heads/main/logs.sh)
```

---

## ⚡ *⚕️ This Snapshot will help u to sync Faster & it will start from Block -- `5.17M`

## 4. 🧪 SNAPSHORT COMMAND :

```bash
sudo systemctl stop zgs && \
rm -rf $HOME/0g-storage-node/run/db/flow_db && \
wget https://snapshot.corenodehq.xyz/0g_testnet/flow_db.tar.gz -O $HOME/0g-storage-node/run/db/flow_db.tar.gz && tar -xzvf $HOME/0g-storage-node/run/db/flow_db.tar.gz -C $HOME/0g-storage-node/run/db/
sudo systemctl restart zgs
```
## 🛑 Stop & Remove Node

```bash
sudo systemctl stop zgs
sudo systemctl disable zgs
sudo rm /etc/systemd/system/zgs.service
rm -rf $HOME/0g-storage-node
```

---

## 💽 Check Disk Space

```bash
df -h
```
## 🌍 Useful Links

- 🔎 **Explorer (Check Transactions):**  
  [chainscan-galileo.bangcode.id](https://chainscan-galileo.bangcode.id/)  
  [chainscan-galileo.0g.ai](https://chainscan-galileo.0g.ai/)

- ⛏️ **View Miner Details:**  
  [storagescan-galileo.0g.ai/miner/](https://storagescan-galileo.0g.ai/miner/)  
  *(Add your wallet address at the end)*

---
## ⏳ Node Sync Information

> **Note:** ⏳ Node sync can take 6-12 hours (depending on your internet speed and hardware). ⚡ Once syncing is complete, the node will run automatically — no manual intervention needed! 
---
## 🤖 Need Help

 📺 **Guides & Updates:** [@LEGENDARYLOOTERSSS](https://t.me/LEGENDARYLOOTERSSS)

 If U have any issue then open a issue on this repo or Dm me on Telegram~

Thank You! Happy Coding!📈
```
