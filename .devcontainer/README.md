# Development Container Configuration

## What's In This Folder?

This folder contains files that set up your development environment:

### `devcontainer.json`
- **What**: Main configuration file for the dev container
- **Why**: Ensures everyone has the same development setup
- **Contains**:
  - Which VS Code extensions to install
  - What development tools to include
  - How to configure the environment

### `Dockerfile`
- **What**: Instructions for building the container
- **Why**: Customizes the development environment
- **Contains**:
  - Base .NET image selection
  - Additional tool installation
  - Environment configuration

### `create-project.sh`
- **What**: Script to set up a new C# project
- **Why**: Makes starting a new project easier
- **Contains**:
  - Solution creation
  - Project setup
  - Test project configuration 