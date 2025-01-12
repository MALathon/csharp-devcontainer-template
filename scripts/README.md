# Helper Scripts

This folder contains scripts that help set up and manage your development environment.

## Available Scripts

### `create-project.sh`
- **What**: Creates a new C# project structure with tests
- **When to Use**:
  - ✅ When starting a new project
  - ✅ After cloning the repository for the first time
  - ✅ When you want a fresh project setup
- **Creates**:
  - LearnCSharp solution
  - Console application
  - Core library
  - Test project
  - Common package references
- **How to Use**:
  ```bash
  ./scripts/create-project.sh
  ```

### `setup-ubuntu.sh`
- **What**: Sets up Ubuntu for C# development
- **When to Use**:
  - ✅ On a fresh Ubuntu installation
  - ✅ When setting up a new development machine
  - ✅ Before using VS Code and Docker for the first time
  - ❌ Not needed if using the dev container
- **Installs**:
  - Docker
  - VS Code
  - Required VS Code extensions
  - Development tools
- **How to Use**:
  ```bash
  ./scripts/setup-ubuntu.sh
  ```

## Usage Tips

1. **Make Scripts Executable**
   ```bash
   chmod +x scripts/*.sh
   ```

2. **Run from Repository Root**
   ```bash
   # Good
   ./scripts/create-project.sh

   # Wrong
   cd scripts
   ./create-project.sh
   ```

3. **Check Script Output**
   - Watch for any error messages
   - Verify all steps completed
   - Check project structure after running

## Common Issues

### Permission Denied
```bash
# Fix with
chmod +x scripts/*.sh
```

### Script Not Found
```bash
# Make sure you're in the repository root
cd /path/to/repository
./scripts/script-name.sh
```

### Build Errors
1. Check .NET SDK is installed
2. Verify Docker is running
3. Try running script with `bash -x` for debugging:
   ```bash
   bash -x scripts/create-project.sh
   ``` 