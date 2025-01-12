# Development Container

The development container provides a consistent environment for C# development on Ubuntu.

## Ubuntu-Specific Setup

### System Requirements
- Ubuntu 20.04 or newer recommended
- At least 4GB RAM
- 10GB free disk space
- CPU with virtualization support

### Troubleshooting Common Ubuntu Issues

1. **Docker Permission Issues**
   ```bash
   # If you see "permission denied" with docker commands:
   sudo usermod -aG docker $USER
   # Log out and back in for changes to take effect
   ```

2. **VS Code Not Finding Docker**
   ```bash
   # Check Docker service status
   systemctl status docker
   
   # Start Docker if it's not running
   sudo systemctl start docker
   sudo systemctl enable docker
   ```

3. **Container Build Fails**
   ```bash
   # Clear Docker cache
   docker system prune -a
   
   # Check free space
   df -h
   ```

## Components

### Base Image
- .NET 8.0 SDK
- Build essentials
- Python 3.11 (for documentation)

### VS Code Extensions
- **C# Dev Kit**: Full C# development support
- **Test Explorer**: Visual test running and debugging
- **Coverage Gutters**: Code coverage visualization
- **GitLens**: Enhanced Git integration
- **Code Spell Checker**: Catch typos in code and comments

### Development Tools
- Git and GitHub CLI
- MkDocs for documentation
- xUnit for testing
- FluentAssertions for readable tests
- Moq for mocking

## Configuration Files

### devcontainer.json
Controls the development container configuration:
- Base image selection
- Feature installation
- VS Code extensions
- Startup commands

### Dockerfile
Customizes the container:
- Installs additional packages
- Configures the environment

## Usage Tips

1. **First Time Setup**:
   - Wait for container to build
   - Let automatic restore complete
   - Run the create-project script

2. **Daily Development**:
   - Container starts automatically
   - All tools ready to use
   - Documentation available via `mkdocs serve` 

## Ubuntu Performance Tips

1. **Enable Docker BuildKit**
   ```bash
   # Edit or create daemon.json
   sudo nano /etc/docker/daemon.json
   
   # Add these lines:
   {
     "features": {
       "buildkit": true
     }
   }
   
   # Restart Docker
   sudo systemctl restart docker
   ```

2. **VS Code Performance**
   - Disable unnecessary extensions
   - Use workspace storage
   - Consider increasing VS Code memory limit:
   ```bash
   # Add to ~/.config/code-flags.conf
   --max-memory=8192
   ``` 