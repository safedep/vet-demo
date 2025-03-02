#!/bin/bash

cd /tmp/

# Get the latest release version from GitHub API
LATEST_VERSION=$(curl -s https://api.github.com/repos/safedep/vet/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

wget "https://github.com/safedep/vet/releases/download/${LATEST_VERSION}/vet_Linux_x86_64.tar.gz"

tar -xvzf vet_Linux_x86_64.tar.gz
chmod +x vet

mv vet /usr/bin/
chown root:root /usr/bin/vet

ln -sf /usr/bin/vet /usr/local/bin/vet
