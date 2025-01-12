# Test Projects

## What's In This Folder?

Contains test projects that verify your code works correctly:

### `MyProject.Tests/`
- **What**: Unit tests for your code
- **Why**: Ensures code works as expected
- **Contains**:
  - Test classes
  - Test data
  - Test helpers

## Running Tests

```bash
# Run all tests
dotnet test

# Run specific test
dotnet test --filter "FullyQualifiedName=Namespace.Class.TestName"

# Run with coverage
dotnet test /p:CollectCoverage=true
```

## Adding Tests

1. Create test class:
   ```csharp
   public class MyClassTests
   {
       [Fact]
       public void MyMethod_Scenario_ExpectedResult()
       {
           // Arrange
           // Act
           // Assert
       }
   }
   ```

2. Run tests to verify 