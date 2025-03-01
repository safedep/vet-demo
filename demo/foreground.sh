#!/bin/bash

echo "Installing SafeDep vet..."
cd /tmp/
wget https://github.com/safedep/vet/releases/download/v1.9.4/vet_Linux_x86_64.tar.gz
tar -xvzf vet_Linux_x86_64.tar.gz
chmod +x vet
mv vet /usr/local/bin/

echo "Time to scan for malware by vet 🔍"