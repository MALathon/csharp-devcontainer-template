#!/bin/bash

# Create solution
dotnet new sln -n GameDev

# Create main project
dotnet new classlib -n GameDev.Core
dotnet sln add GameDev.Core/GameDev.Core.csproj

# Create test project
dotnet new xunit -n GameDev.Tests
dotnet sln add GameDev.Tests/GameDev.Tests.csproj
dotnet add GameDev.Tests/GameDev.Tests.csproj reference GameDev.Core/GameDev.Core.csproj

# Add common NuGet packages
cd GameDev.Core
dotnet add package Microsoft.Extensions.DependencyInjection
dotnet add package Microsoft.Extensions.Logging

cd ../GameDev.Tests
dotnet add package Moq
dotnet add package FluentAssertions 