# Debugging Your Code

## Using the VS Code Debugger

### Basic Debugging
1. **Set a Breakpoint**
   - Click in the left margin next to a line number
   - Or press F9 on the current line
   - Red dot appears = breakpoint set

2. **Start Debugging**
   - Press F5
   - Or click "Run and Debug" in sidebar
   - Choose ".NET Core Launch (console)"

3. **Control Execution**
   - F5: Continue
   - F10: Step Over (skip function details)
   - F11: Step Into (go into function details)
   - Shift+F11: Step Out (finish current function)

### Watch Variables
1. In debug view, find "WATCH" section
2. Click + to add variable
3. Type variable name to watch

### Debug Console
- Shows program output
- Enter expressions to evaluate
- Type `?` for help

## Common Debugging Scenarios

### 1. Program Crashes
```csharp
try
{
    // Put suspicious code in try block
    SomeMethod();
}
catch (Exception ex)
{
    // Set breakpoint here
    Console.WriteLine(ex.Message);
}
```

### 2. Value Is Wrong
```csharp
// Set breakpoint here
var result = Calculate(x, y);
// Check 'result' in debugger
```

### 3. Loop Problems
```csharp
for (int i = 0; i < items.Count; i++)
{
    // Set condition breakpoint:
    // Right-click breakpoint → Edit
    // Add condition: i == 5
    Process(items[i]);
}
```

## Debugging Tips

1. **Use Debug.WriteLine**
```csharp
Debug.WriteLine($"Processing item: {item.Name}");
```

2. **Conditional Breakpoints**
- Right-click breakpoint
- Add condition
- Only breaks when condition is true

3. **Data Tips**
- Hover over variables while debugging
- Click pins to keep values visible

4. **Exception Settings**
- Debug → Windows → Exception Settings
- Choose which exceptions break execution 