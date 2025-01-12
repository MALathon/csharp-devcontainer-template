#!/bin/bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print status
print_status() {
    echo -e "${YELLOW}➜ $1${NC}"
}

# Function to print success
print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

# Function to print error
print_error() {
    echo -e "${RED}✗ $1${NC}"
}

# Check if script is run as root
if [ "$EUID" -eq 0 ]; then 
    print_error "Please do not run as root. Use your regular user account."
    exit 1
fi

# Update system
print_status "Updating system packages..."
sudo apt update && sudo apt upgrade -y
print_success "System updated"

# Install prerequisites
print_status "Installing prerequisites..."
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release \
    wget \
    git
print_success "Prerequisites installed"

# Install VS Code
print_status "Installing Visual Studio Code..."
if ! command -v code &> /dev/null; then
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    sudo apt update
    sudo apt install -y code
    rm packages.microsoft.gpg
    print_success "VS Code installed"
else
    print_success "VS Code already installed"
fi

# Install Docker
print_status "Installing Docker..."
if ! command -v docker &> /dev/null; then
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    rm get-docker.sh
    print_success "Docker installed"
else
    print_success "Docker already installed"
fi

# Install VS Code extensions
print_status "Installing VS Code extensions..."
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
code --install-extension formulahendry.dotnet-test-explorer
code --install-extension ryanluker.vscode-coverage-gutters
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension eamodio.gitlens
code --install-extension yzhang.markdown-all-in-one
print_success "VS Code extensions installed"

# Configure Docker
print_status "Configuring Docker..."
sudo tee /etc/docker/daemon.json > /dev/null <<EOF
{
  "features": {
    "buildkit": true
  }
}
EOF
sudo systemctl restart docker
print_success "Docker configured"

# Configure VS Code
print_status "Configuring VS Code..."
mkdir -p ~/.config
echo "--max-memory=8192" > ~/.config/code-flags.conf
print_success "VS Code configured"

print_success "Setup complete! Please log out and log back in for Docker permissions to take effect."
echo -e "${YELLOW}After logging back in, you can clone the repository and start developing!${NC}" 