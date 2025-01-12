# Setting Up Your Development Environment

## Overview

This guide will help you set up your Ubuntu development environment. We'll install:
- 🐋 Docker for your development container
- 📝 VS Code for writing code
- 🛠️ Required tools and extensions

## Step-by-Step Setup

### 1. System Requirements
- Ubuntu 20.04 or newer
- At least 4GB RAM
- 10GB free disk space
- Internet connection

### 2. Install Docker

```bash
# Update system
sudo apt update
sudo apt upgrade -y

# Install prerequisites
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Add Docker's GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Add Docker repository
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/docker/daemon.json > /dev/null

# Install Docker
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add your user to docker group
sudo usermod -aG docker $USER

# Start Docker
sudo systemctl enable docker
sudo systemctl start docker
```

### 3. Install VS Code

```bash
# Install VS Code
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

### 4. Install Required Extensions

```bash
# Install from terminal
code --install-extension ms-vscode-remote.remote-containers
code --install-extension ms-dotnettools.csharp
code --install-extension ms-dotnettools.csdevkit
```

Or install in VS Code:
1. Press `Ctrl+Shift+X`
2. Search for and install:
   - "Remote - Containers"
   - "C#"
   - "C# Dev Kit"

### 5. Configure Docker Resources

1. Create/edit Docker daemon configuration:
```bash
sudo nano /etc/docker/daemon.json
```

2. Add these settings:
```json
{
  "default-memory": "4G",
  "default-cpus": "2"
}
```

3. Restart Docker:
```bash
sudo systemctl restart docker
```

## Verifying Your Setup

### 1. Check Docker
```bash
# Should show Docker version
docker --version

# Should run without error
docker run hello-world
```

### 2. Check VS Code
```bash
# Should show VS Code version
code --version

# Check extensions
code --list-extensions
```

## Common Setup Problems

### Docker Issues

#### Permission Denied
```bash
# If you see "permission denied":
sudo usermod -aG docker $USER
# Then log out and back in
```

#### Docker Won't Start
```bash
# Check status
systemctl status docker

# Common fix
sudo systemctl restart docker
```

### VS Code Issues

#### Extensions Won't Install
```bash
# Try from terminal
code --install-extension ms-vscode-remote.remote-containers

# Or remove and reinstall VS Code
sudo apt remove code
sudo apt install code
```

#### Can't Find Development Container
- Make sure Docker is running
- Try restarting VS Code
- Check Docker permissions

## Next Steps

1. **Clone the Repository**
   ```bash
   git clone [repository-url]
   cd [repository-name]
   ```

2. **Open in VS Code**
   ```bash
   code .
   ```

3. **Start Development Container**
   - Click "Reopen in Container" when prompted
   - Wait for container to build
   - Start coding!

## Getting Help

If you run into problems:
1. Check the troubleshooting guide
2. Look for error messages in:
   - Terminal output
   - Docker logs (`docker logs [container-id]`)
   - VS Code Developer Tools (Help → Toggle Developer Tools)
3. Ask for help in Discussions

## System Maintenance

### Regular Updates
```bash
# Update system
sudo apt update
sudo apt upgrade

# Update Docker
sudo apt update
sudo apt upgrade docker-ce

# Update VS Code
sudo apt update
sudo apt upgrade code
```

### Cleaning Up
```bash
# Remove unused Docker data
docker system prune

# Clear VS Code cache
rm -rf ~/.config/Code/Cache/*
```

Remember: After any major changes, you might need to rebuild your development container! 