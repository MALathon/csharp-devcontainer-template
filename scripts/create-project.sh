#!/bin/bash

# Colors for output
GREEN='\033[0;32m'
NC='\033[0m'

echo "Creating new C# project..."

# Create solution and projects
dotnet new sln -n LearnCSharp
dotnet new console -n LearnCSharp.Console
dotnet new classlib -n LearnCSharp.Core
dotnet new xunit -n LearnCSharp.Tests

# Add projects to solution
dotnet sln add LearnCSharp.Console/LearnCSharp.Console.csproj
dotnet sln add LearnCSharp.Core/LearnCSharp.Core.csproj
dotnet sln add LearnCSharp.Tests/LearnCSharp.Tests.csproj

# Add project references
dotnet add LearnCSharp.Console/LearnCSharp.Console.csproj reference LearnCSharp.Core/LearnCSharp.Core.csproj
dotnet add LearnCSharp.Tests/LearnCSharp.Tests.csproj reference LearnCSharp.Core/LearnCSharp.Core.csproj

# Add common packages
cd LearnCSharp.Core
dotnet add package Microsoft.Extensions.DependencyInjection
dotnet add package Microsoft.Extensions.Logging

cd ../LearnCSharp.Tests
dotnet add package FluentAssertions
dotnet add package Moq

echo -e "${GREEN}Project created successfully!${NC}" 