# Testing Your Development Container

## Pre-Submission Checklist

### 1. Clean Environment Test
```bash
# Remove existing containers and images
docker system prune -a --volumes

# Remove VS Code dev container cache
rm -rf ~/.vscode-server
```

### 2. Fresh Clone Test
```bash
# Clone to a new location
cd /tmp
git clone [your-repo-url]
cd [repo-name]

# Open in VS Code
code .
```

### 3. Container Build Verification
- [ ] "Reopen in Container" prompt appears
- [ ] Container builds without errors
- [ ] Build time is reasonable (5-10 minutes first time)
- [ ] Progress shows in VS Code bottom right

### 4. Extension Verification
Check these are installed and working:
- [ ] C# Extension shows language features
- [ ] Test Explorer appears
- [ ] GitLens features work
- [ ] Intellisense works in C# files

### 5. Development Tools Check
```bash
# Check .NET SDK
dotnet --version  # Should show 8.0.x

# Check Git
git --version

# Check MkDocs
mkdocs --version
```

### 6. Project Creation Test
```bash
# Run project creation script
./create-project.sh

# Verify structure
ls -la
# Should see:
# - Solution file
# - Project folders
# - Test project
```

### 7. Build and Test
```bash
# Build solution
dotnet build

# Run tests
dotnet test

# Should both complete without errors
```

### 8. Documentation Server
```bash
# Start docs server
mkdocs serve

# Check in browser
# http://localhost:8000 should load
```

### 9. Terminal Features
- [ ] Zsh is default shell
- [ ] Command completion works
- [ ] Git integration shows in prompt
- [ ] Aliases work (try: `g` for git, `d` for dotnet)

### 10. Common User Actions
Test these common scenarios:
- [ ] Create new C# file (should get template)
- [ ] Debug a program (F5 should work)
- [ ] Run tests in Test Explorer
- [ ] Git operations (stage, commit, etc.)

## Testing Different Environments

### Test on Clean Ubuntu
```bash
# Using Docker to test Ubuntu setup
docker run -it ubuntu:20.04

# Run setup script
./setup-ubuntu.sh

# Verify environment
```

### Test with Different Resources
Test with different Docker resource allocations:
- Minimum (2GB RAM, 1 CPU)
- Recommended (4GB RAM, 2 CPU)
- Limited (1GB RAM, 1 CPU) - Should show warning

## Common Issues to Check

### Permission Problems
```bash
# Try operations as non-root user
sudo su - testuser
docker ...
code ...
```

### Network Issues
```bash
# Test container networking
ping github.com
curl -v https://marketplace.visualstudio.com
```

### Resource Issues
```bash
# Monitor resource usage
docker stats

# Check logs for OOM or CPU issues
docker logs [container-id]
```

## Cleanup After Testing

```bash
# Remove test containers
docker rm -f $(docker ps -aq)

# Clean up test volumes
docker volume prune

# Remove test images
docker rmi $(docker images -q)

# Clean VS Code
rm -rf ~/.vscode-server
```

## Reporting Issues

If you find problems:
1. Document exact steps to reproduce
2. Include all relevant logs
3. Note system specifications
4. Create detailed GitHub issue

## Final Checklist

Before submitting:
- [ ] All tests pass
- [ ] Documentation is accurate
- [ ] Setup script works
- [ ] Project creation works
- [ ] Clean environment test passes
- [ ] Resource usage is reasonable
- [ ] No permission issues
- [ ] Network access works
- [ ] VS Code integration works

Remember: The goal is for users to have a smooth, error-free experience when they first open the development container. 