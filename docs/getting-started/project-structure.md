# Project Structure

## Core Components

### GameDev.Core
Main project library containing:
- Game logic
- Business rules
- Core functionality

### GameDev.Tests
Test project containing:
- Unit tests
- Integration tests
- Test helpers

## Dependencies

### Core Project
- Microsoft.Extensions.DependencyInjection
  - Dependency injection support
  - Service management
- Microsoft.Extensions.Logging
  - Structured logging
  - Debug output

### Test Project
- xUnit
  - Test framework
  - Test runners
- FluentAssertions
  - Readable assertions
  - Better test output
- Moq
  - Mocking framework
  - Test isolation

## Best Practices

1. Keep Core project focused
2. Write tests for all features
3. Use dependency injection
4. Follow SOLID principles
5. Document public APIs 

# Project Structure Guide

## Standard C# Project Layout

```
YourSolution/
├── src/                    # Source code
│   ├── YourProject/       # Main project
│   │   ├── Models/        # Data models
│   │   ├── Services/      # Business logic
│   │   ├── Controllers/   # API endpoints (if any)
│   │   └── Program.cs     # Entry point
│   └── YourProject.Core/  # Core library (optional)
├── tests/                 # Test projects
│   ├── YourProject.Tests/
│   │   ├── ModelTests/
│   │   └── ServiceTests/
│   └── YourProject.IntegrationTests/
├── docs/                  # Documentation
├── .editorconfig         # Code style rules
├── .gitignore           # Git ignore rules
└── YourSolution.sln     # Solution file
```

## Key Components

### Source Code (`src/`)
- **Models**: Data structures and entities
- **Services**: Business logic and operations
- **Controllers**: API endpoints (for web projects)
- **Program.cs**: Application entry point

### Tests (`tests/`)
- **Unit Tests**: Test individual components
- **Integration Tests**: Test components working together
- **Test Data**: Sample data for testing

### Documentation (`docs/`)
- **API Documentation**: Generated from code
- **User Guides**: How to use your code
- **Development Guides**: How to work on the code

## Best Practices

### 1. File Organization
```csharp
// One class per file
// File name matches class name
public class PlayerController 
{
    // Class implementation
}
```

### 2. Namespace Structure
```csharp
namespace YourProject.Models
{
    public class Player { }
}

namespace YourProject.Services
{
    public class PlayerService { }
}
```

### 3. Project References
```xml
<ItemGroup>
    <!-- Reference core project -->
    <ProjectReference Include="..\YourProject.Core\YourProject.Core.csproj" />
    
    <!-- Common packages -->
    <PackageReference Include="Microsoft.Extensions.DependencyInjection" Version="8.0.0" />
</ItemGroup>
```

## Common Files

### .editorconfig
```ini
# Top-most EditorConfig file
root = true

[*.cs]
indent_style = space
indent_size = 4
end_of_line = lf
charset = utf-8
trim_trailing_whitespace = true
insert_final_newline = true
```

### .gitignore
```gitignore
# Build results
[Dd]ebug/
[Rr]elease/
[Bb]in/
[Oo]bj/

# Visual Studio files
.vs/
*.user
*.userosscache
*.suo

# Test Results
TestResults/
[Cc]overage/
```

## Creating New Projects

### Console Application
```bash
dotnet new console -n YourProject
dotnet new xunit -n YourProject.Tests
dotnet sln add src/YourProject
dotnet sln add tests/YourProject.Tests
```

### Class Library
```bash
dotnet new classlib -n YourProject.Core
dotnet sln add src/YourProject.Core
```

## Tips for Success

1. **Keep Projects Focused**
   - Each project should have a single responsibility
   - Split large projects into smaller ones

2. **Test Project Organization**
   - Mirror the structure of your source code
   - Keep test data separate from test logic

3. **Documentation**
   - Use XML comments for public APIs
   - Keep README.md up to date
   - Document architectural decisions 