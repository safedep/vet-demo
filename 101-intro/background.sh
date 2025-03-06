#!/bin/bash

cd /tmp/

# Get the latest release version from GitHub API
LATEST_VERSION=$(curl -s https://api.github.com/repos/safedep/vet/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')

wget "https://github.com/safedep/vet/releases/download/${LATEST_VERSION}/vet_Linux_x86_64.tar.gz"

tar -xvzf vet_Linux_x86_64.tar.gz
chmod +x vet

mv vet /usr/bin/

# Install latest version of gh cli
LATEST_GHCLI_VERSION=$(curl -s https://api.github.com/repos/cli/cli/releases/latest | grep '"tag_name":' | sed -E 's/.*"([^"]+)".*/\1/')
LATEST_GHCLI_VERSION_NUMBER=$(echo $LATEST_GHCLI_VERSION | sed -E 's/v//')

wget "https://github.com/cli/cli/releases/download/${LATEST_GHCLI_VERSION}/gh_${LATEST_GHCLI_VERSION_NUMBER}_linux_amd64.tar.gz"

tar -xvzf gh_${LATEST_GHCLI_VERSION_NUMBER}_linux_amd64.tar.gz
chmod +x gh_${LATEST_GHCLI_VERSION_NUMBER}_linux_amd64/bin/gh

mv gh_${LATEST_GHCLI_VERSION_NUMBER}_linux_amd64/bin/gh /usr/bin/
