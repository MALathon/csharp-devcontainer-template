# Coding Standards for Beginners

## Basic Rules

### 1. Name Things Clearly
```csharp
// Good - Clear what this means
int playerScore = 0;
string playerName = "Alex";

// Bad - Unclear names
int s = 0;
string n = "Alex";
```

### 2. Add Comments
```csharp
// Calculates total score based on points and multiplier
public int CalculateScore(int points, int multiplier)
{
    return points * multiplier;
}
```

### 3. Keep Methods Simple
```csharp
// Good - One clear purpose
public void UpdatePlayerScore(int newPoints)
{
    playerScore += newPoints;
    SaveScore();
}

// Bad - Doing too many things
public void DoPlayerStuff(int points, bool levelUp, string newWeapon)
{
    playerScore += points;
    if (levelUp) IncreaseLevel();
    ChangeWeapon(newWeapon);
    SaveGame();
}
```

## File Organization

### 1. One Class Per File
```plaintext
Player.cs      - Contains Player class
Weapon.cs      - Contains Weapon class
GameState.cs   - Contains GameState class
```

### 2. Use Folders to Organize
```plaintext
Models/        - Data structures
Services/      - Business logic
Controllers/   - Application flow
Tests/         - Test files
```

## Testing

### 1. Name Tests Clearly
```csharp
public void Player_TakeDamage_HealthDecreases()
{
    var player = new Player();
    player.TakeDamage(10);
    Assert.Equal(90, player.Health);
}
```

### 2. Test Structure
```csharp
[Fact]
public void CalculateScore_MultiplyPointsByLevel_ReturnsCorrectScore()
{
    // Arrange - Set up your test
    var calculator = new ScoreCalculator();
    int points = 100;
    int level = 2;

    // Act - Do the thing you're testing
    int result = calculator.Calculate(points, level);

    // Assert - Check if it worked
    Assert.Equal(200, result);
}
```

## VS Code Tips

### 1. Code Completion
- Start typing and press `Ctrl+Space`
- VS Code suggests completions
- Press `Tab` to accept

### 2. Quick Fixes
- Look for light bulb 💡
- Press `Ctrl+.`
- Choose a fix

### 3. Debugging
- Click left of line number to add breakpoint
- Press F5 to start debugging
- Use Step Over (F10) and Step Into (F11) 