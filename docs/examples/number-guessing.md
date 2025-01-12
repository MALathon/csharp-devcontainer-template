# Number Guessing Game Example

## What Is This?

A simple console game that shows how to:
- Get user input
- Use loops and conditions
- Handle errors
- Make interactive programs

## The Code Explained

```csharp
// This creates our program
namespace NumberGuessing;

public class Program
{
    public static void Main()
    {
        // Welcome message
        Console.WriteLine("Welcome to the Number Guessing Game!");
        
        // Create random number (1-100)
        var random = new Random();
        var target = random.Next(1, 101);
        var guesses = 0;
        
        // Keep asking until they guess right
        while (true)
        {
            // Ask for a guess
            Console.Write("Guess a number (1-100): ");
            
            // Make sure they entered a valid number
            if (!int.TryParse(Console.ReadLine(), out int guess))
            {
                Console.WriteLine("Please enter a valid number!");
                continue;  // Ask again if not valid
            }
            
            // Count this guess
            guesses++;
            
            // Check if they got it right
            if (guess == target)
            {
                Console.WriteLine($"You got it in {guesses} guesses!");
                break;  // End the game
            }
            
            // Give them a hint
            Console.WriteLine(guess < target ? "Too low!" : "Too high!");
        }
    }
}
```

## How to Run It

1. Open Terminal in VS Code
2. Navigate to the example:
   ```bash
   cd examples/NumberGuessing
   ```
3. Run the game:
   ```bash
   dotnet run
   ```

## Things to Try

1. **Change the Range**
   ```csharp
   // Make it 1-50 instead of 1-100
   var target = random.Next(1, 51);
   ```

2. **Add a Maximum Tries**
   ```csharp
   var maxTries = 10;
   if (guesses >= maxTries)
   {
       Console.WriteLine("Out of tries!");
       break;
   }
   ```

3. **Add Difficulty Levels**
   ```csharp
   Console.WriteLine("Choose difficulty (1=Easy, 2=Medium, 3=Hard):");
   var difficulty = int.Parse(Console.ReadLine());
   var maxNumber = difficulty * 33;  // Harder = bigger range
   ```

## Learning Points

1. **User Input**
   - `Console.ReadLine()` gets input
   - `int.TryParse()` safely converts to number
   - Handle invalid input gracefully

2. **Loops**
   - `while (true)` runs forever until `break`
   - `continue` skips to next iteration
   - Good for interactive programs

3. **Random Numbers**
   - `Random()` creates number generator
   - `Next(min, max)` gets random number
   - Max is exclusive (Next(1,101) = 1-100)

4. **String Formatting**
   - `$"Text {variable}"` inserts values
   - Makes output look nice
   - Easy to read and modify

## Next Steps

1. Try modifying the code
2. Add new features
3. Create your own simple game
4. Learn about classes and objects 