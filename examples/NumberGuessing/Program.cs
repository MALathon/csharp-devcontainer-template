using System;

namespace NumberGuessing;

public class Program
{
    public static void Main()
    {
        Console.WriteLine("Welcome to the Number Guessing Game!");
        var random = new Random();
        var target = random.Next(1, 101);
        var guesses = 0;
        
        while (true)
        {
            Console.Write("Guess a number (1-100): ");
            if (!int.TryParse(Console.ReadLine(), out int guess))
            {
                Console.WriteLine("Please enter a valid number!");
                continue;
            }
            
            guesses++;
            
            if (guess == target)
            {
                Console.WriteLine($"You got it in {guesses} guesses!");
                break;
            }
            
            Console.WriteLine(guess < target ? "Too low!" : "Too high!");
        }
    }
} 