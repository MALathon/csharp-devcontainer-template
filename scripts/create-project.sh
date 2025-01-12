#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m'

echo "Creating new C# project..."

# Create solution and projects
dotnet new sln -n MyProject
dotnet new console -n MyProject
dotnet new xunit -n MyProject.Tests

# Add projects to solution
dotnet sln add MyProject/MyProject.csproj
dotnet sln add MyProject.Tests/MyProject.Tests.csproj

# Add test reference
dotnet add MyProject.Tests/MyProject.Tests.csproj reference MyProject/MyProject.csproj

# Add common packages
dotnet add MyProject.Tests/MyProject.Tests.csproj package FluentAssertions
dotnet add MyProject.Tests/MyProject.Tests.csproj package Moq

echo -e "${GREEN}Project created successfully!${NC}" 