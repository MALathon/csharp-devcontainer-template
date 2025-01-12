# Writing Tests in C#

## Why Test Your Code?

Testing helps you:
- Find bugs before they cause problems
- Make changes confidently
- Document how code should work
- Write better code

## Your First Test

### 1. Basic Test Structure
```csharp
using Xunit;

public class CalculatorTests
{
    [Fact]
    public void Add_TwoNumbers_ReturnsSum()
    {
        // Arrange - Set up your test
        var calculator = new Calculator();
        
        // Act - Do the thing you want to test
        int result = calculator.Add(2, 3);
        
        // Assert - Check if it worked
        Assert.Equal(5, result);
    }
}
```

### 2. Using FluentAssertions
```csharp
using FluentAssertions;

[Fact]
public void PlayerName_SetToEmpty_ThrowsException()
{
    // Arrange
    var player = new Player();
    
    // Act & Assert
    player.Invoking(p => p.SetName(""))
          .Should()
          .Throw<ArgumentException>()
          .WithMessage("Name cannot be empty");
}
```

## Test Types

### 1. Unit Tests
Test one piece in isolation:
```csharp
[Fact]
public void Score_WhenReset_ReturnsZero()
{
    var game = new Game();
    game.Score = 100;
    
    game.Reset();
    
    game.Score.Should().Be(0);
}
```

### 2. Integration Tests
Test multiple pieces working together:
```csharp
[Fact]
public void SaveGame_PersistsToDatabase()
{
    var db = new GameDatabase();
    var game = new Game(db);
    
    game.Save();
    
    var loaded = db.LoadGame();
    loaded.Should().BeEquivalentTo(game);
}
```

## Testing Best Practices

### 1. Test Naming
Use pattern: MethodName_Scenario_ExpectedResult
```csharp
[Fact]
public void Calculate_NegativeNumber_ThrowsException()
[Fact]
public void GetPlayer_IdNotFound_ReturnsNull()
```

### 2. Test One Thing
```csharp
// Good - Tests one thing
[Fact]
public void Health_TakeDamage_DecreasesByDamageAmount()

// Bad - Tests multiple things
[Fact]
public void Player_GameplayScenario_UpdatesStateCorrectly()
```

### 3. Use Test Data
```csharp
[Theory]
[InlineData(0, 1, 1)]
[InlineData(1, 2, 3)]
[InlineData(-1, 1, 0)]
public void Add_WhenCalled_ReturnsExpectedSum(
    int a, int b, int expected)
{
    var calc = new Calculator();
    var result = calc.Add(a, b);
    result.Should().Be(expected);
}
```

## Mocking (Using Moq)

### 1. Basic Mock
```csharp
[Fact]
public void SaveGame_CallsDatabase()
{
    // Arrange
    var mockDb = new Mock<IGameDatabase>();
    var game = new Game(mockDb.Object);
    
    // Act
    game.Save();
    
    // Assert
    mockDb.Verify(db => db.SaveGame(game), Times.Once);
}
```

### 2. Mock Return Values
```csharp
[Fact]
public void GetHighScore_ReturnsFromDatabase()
{
    var mockDb = new Mock<IGameDatabase>();
    mockDb.Setup(db => db.GetHighScore())
          .Returns(100);
    
    var game = new Game(mockDb.Object);
    var score = game.GetHighScore();
    
    score.Should().Be(100);
}
```

## Running Tests

### From Terminal
```bash
# Run all tests
dotnet test

# Run specific test
dotnet test --filter "FullyQualifiedName=Namespace.Class.TestName"

# Run with coverage
dotnet test /p:CollectCoverage=true
```

### From VS Code
1. Click Test Explorer icon
2. Click Run All Tests
3. Or run individual tests

## Debugging Tests
1. Set breakpoint in test
2. Right-click test in Test Explorer
3. Click "Debug Test" 