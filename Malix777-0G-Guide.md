# 🚀 0G Storage Node Guide (by Malix777)

## Step 1: Download Config (by Malix777)
```bash
curl -o $HOME/0g-storage-node/run/config.toml \
https://raw.githubusercontent.com/Malix7777-cpu/0G-LABS-STORAGE-NODE-RUN-GUIDE-BY-Malix777/main/config.toml

## Step 2: Download & Extract Latest Snapshot
```bash
wget https://snapshot.corenodehq.xyz/0g_testnet/flow_db.tar.gz \
-O $HOME/0g-storage-node/run/db/flow_db.tar.gz && \
tar -xzvf $HOME/0g-storage-node/run/db/flow_db.tar.gz -C $HOME/0g-storage-node/run/db/

cd $HOME/0g-storage-node/run
./start.sh
