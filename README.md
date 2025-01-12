# Learn C# Development Environment

A beginner-friendly environment for learning C# programming on Ubuntu! Perfect for:
- 🐧 Learning C# on Linux
- ✨ Writing clean, professional code
- 🧪 Learning test-driven development
- 🛠️ Building command-line applications

## What Makes This Special?

Think of this as your personal Ubuntu development environment that:
- 📦 Uses containers so everything works consistently
- 🔧 Comes with professional tools pre-configured
- 🧪 Includes testing tools from day one
- 📚 Has built-in documentation to help you learn

## Quick Start for Ubuntu

### 1. Install Required Tools
```bash
# Install Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER

# Install VS Code
sudo apt update
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code
```

Log out and log back in for Docker permissions to take effect.

### 2. First Time Setup
1. Open VS Code
2. Install the "Dev Containers" extension:
   ```bash
   code --install-extension ms-vscode-remote.remote-containers
   ```

### 3. Get the Development Environment
```bash
# Clone the repository
git clone [repository-url]
cd [repository-name]

# Open in VS Code
code .
```

### 4. Start Coding
1. When VS Code opens, click "Reopen in Container" when prompted
2. Wait for setup (first time takes about 5-10 minutes)
   - Watch the bottom right for progress
   - The container is installing development tools
3. Open Terminal in VS Code:
   - Press `` Ctrl+` `` or
   - Menu: View → Terminal
4. Run the setup script:
   ```bash
   ./create-project.sh
   ```

### 5. What Just Happened?
- 🛠️ Created a C# environment with:
  - .NET 8.0 SDK
  - Testing tools (xUnit, FluentAssertions, Moq)
  - Code analysis tools
- 🔧 Configured a powerful terminal with:
  - Oh My Zsh + Powerlevel10k theme
  - Smart command completion
  - Development shortcuts
- 📝 Set up VS Code with:
  - C# language support
  - Debugging tools
  - Testing interface

### 6. Need Help?
Start the documentation server:
```bash
mkdocs serve
```
Then open http://localhost:8000 in your browser

Look for:
- 📘 "What is a Dev Container?"
- 🔰 "First Steps"
- ❓ "Ubuntu Troubleshooting"

## Common Ubuntu Issues & Solutions

### Docker Permission Issues?
```bash
# Add yourself to docker group
sudo usermod -aG docker $USER
# Log out and log back in
```

### Container Won't Start?
```bash
# Check Docker service
systemctl status docker

# Start Docker if needed
sudo systemctl start docker
sudo systemctl enable docker
```

### Performance Issues?
1. Check Docker resources:
   ```bash
   # Edit daemon.json
   sudo nano /etc/docker/daemon.json
   ```
   Add:
   ```json
   {
     "default-memory": "4G",
     "default-cpus": "2"
   }
   ```
   Then:
   ```bash
   sudo systemctl restart docker
   ```

## What's Actually Included

### Development Tools
- ✅ .NET 8.0 SDK
- ✅ Testing framework (xUnit)
- ✅ Code analysis tools
- ✅ Git integration

### Terminal Features
- ✅ Oh My Zsh with Powerlevel10k
- ✅ Smart command completion
- ✅ Development shortcuts
- ✅ Git integration

### VS Code Extensions
- ✅ C# language support
- ✅ Debugging tools
- ✅ Test Explorer
- ✅ Git tools

### Documentation
- ✅ Built-in docs server
- ✅ Code examples
- ✅ Testing guides
- ✅ Ubuntu-specific help

Remember: This environment is designed for learning C# on Ubuntu. While it might seem like a lot at first, we'll guide you through each part as you need it!

## Terminal Tips
```bash
# Common commands you'll use:
dotnet run        # Run your program
dotnet test       # Run tests
dotnet build      # Build your code
code .            # Open current folder in VS Code

# Useful aliases (shortcuts):
d           # dotnet
dr          # dotnet run
dt          # dotnet test
g           # git
mk          # mkdocs serve
``` 