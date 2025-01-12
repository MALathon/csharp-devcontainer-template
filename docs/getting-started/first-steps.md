# First Steps with Your Development Environment

## Day One Checklist

### 1. Verify Your Setup
```bash
# Check .NET version
dotnet --version  # Should show 8.0.x

# Check Docker
docker --version

# Check VS Code
code --version
```

### 2. Open Your First Project
1. Open VS Code
2. Click "Open Folder" and select your project directory
3. When prompted, click "Reopen in Container"
4. Wait for the container to build (this takes a few minutes the first time)

### 3. Understanding Your Environment

#### The Terminal
- Press `` Ctrl+` `` to open/close terminal
- You'll see a colorful prompt showing:
  - Current directory
  - Git status (if in a repository)
  - .NET version
  - Command execution time

#### The Editor
- Left sidebar: File explorer and extensions
- Bottom bar: Shows helpful information
- Main area: Your code
- Right sidebar (when needed): Outline and details

### 4. Try These Commands
```bash
# Create a new console project
dotnet new console -n MyFirstProject

# Move into the project directory
cd MyFirstProject

# Run the project
dotnet run

# Create and run some tests
dotnet new xunit -n MyFirstProject.Tests
dotnet test
```

### 5. Common VS Code Actions
1. **Open Command Palette**: `Ctrl+Shift+P`
   - Type ">" to see all commands
   - Try typing "git" to see Git commands

2. **Quick Open File**: `Ctrl+P`
   - Type part of a filename
   - Use arrow keys to select

3. **Find in Files**: `Ctrl+Shift+F`
   - Search entire project
   - Use regex if needed

### 6. Next Steps
1. Try modifying the default Program.cs
2. Write your first test
3. Explore the Git integration
4. Check out the example projects 

### Power Terminal Features

#### Zsh Shortcuts
- `Ctrl+R`: Search command history
- `Alt+C`: Fuzzy find and cd into directory
- `Ctrl+T`: Fuzzy find files
- `Tab`: Smart completion

#### Helpful Aliases
```bash
# Git shortcuts
g = git
ga = git add
gc = git commit
gp = git push

# .NET shortcuts
d = dotnet
dr = dotnet run
dt = dotnet test

# Navigation
.. = cd ..
... = cd ../..
```

#### Directory Navigation
- Type `cd` and press Tab to see directories
- Use `Alt+C` to fuzzy find directories
- Use `..` to go up one directory

#### Command History
- Press ↑ to see previous commands
- Type part of command and press ↑ to search
- `Ctrl+R` for fuzzy search in history 