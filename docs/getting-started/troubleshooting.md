# Troubleshooting Common Issues

## Container Issues

### Container Won't Start
```bash
# Check Docker status
systemctl status docker

# Restart Docker
sudo systemctl restart docker

# Remove old containers
docker system prune
```

### Container is Slow
1. Check VS Code memory settings
2. Ensure Docker has enough resources
3. Try rebuilding container

## Development Issues

### Can't Build Project
1. Check .NET SDK version
2. Try cleaning solution:
   ```bash
   dotnet clean
   dotnet restore
   ```
3. Check for syntax errors

### Tests Won't Run
1. Verify test project references
2. Check test framework packages
3. Try rebuilding test project

## VS Code Issues

### Extensions Not Working
1. Reload VS Code
2. Rebuild container
3. Check extension logs

### IntelliSense Issues
1. Restart OmniSharp
2. Delete bin/obj folders
3. Reload window 