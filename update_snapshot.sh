#!/bin/bash
set -e

echo -e '\n╔════════════════════════════════════════════════╗'
echo -e '║          👻☠️ 😈 Malix777 Storage Node 🎯 🤖🥶         ║'
echo -e '╚════════════════════════════════════════════════╝\n'

# Stop service
sudo systemctl stop zgs

# Clear old DB
rm -rf $HOME/0g-storage-node/run/db/flow_db

# Download latest snapshot
wget "https://us-west-00-firestarter.pipenetwork.com/publicDownload?hash=e9410bc93716131ec96a667ff46d6574"

# Extract
tar -xzvf $HOME/0g-storage-node/run/db/flow_db.tar.gz -C $HOME/0g-storage-node/run/db/

# Remove tar file
rm -f $HOME/0g-storage-node/run/db/flow_db.tar.gz

# Restart services
sudo systemctl start zgs

# Status check
sudo systemctl status zgs --no-pager -l

echo -e '\n✅ Snapshot restored successfully 🚀'
echo -e '✨ Powered by Malix777 ✨'
echo -e '╔════════════════════════════════════════════════╗'
echo -e '║          👻☠️ 😈 Malix777 Storage Node 🎯 🤖🥶         ║'
echo -e '╚════════════════════════════════════════════════╝\n'
