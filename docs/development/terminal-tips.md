# Terminal Tips and Tricks

## Zsh Features

### Smart Completion
- Press Tab for context-aware completions
- Double Tab to see all options
- Arrow keys to navigate completions

### Directory Navigation
```bash
# Quick directory changes
.. = cd ..
... = cd ../..
cd - # Go to previous directory

# Fuzzy finding
Alt+C   # Fuzzy find and cd into directory
Ctrl+T  # Fuzzy find files
```

### Command History
```bash
# Search history
Ctrl+R          # Fuzzy search history
Arrow Up/Down   # Navigate through history
!!              # Repeat last command
!$              # Last argument of previous command
```

### Git Integration
- Branch name in prompt
- Status indicators
- Auto-completion for git commands

## Common Aliases

### Git Shortcuts
```bash
g   = git
ga  = git add
gc  = git commit
gp  = git push
gst = git status
```

### .NET Shortcuts
```bash
d   = dotnet
dr  = dotnet run
dt  = dotnet test
dw  = dotnet watch
```

### Navigation
```bash
ll  = ls -la
l   = ls -lh
h   = history
```

## Power User Features

### Process Management
```bash
Ctrl+C  # Stop current process
Ctrl+Z  # Suspend process
fg      # Resume suspended process
jobs    # List suspended processes
```

### File Operations
```bash
# Quick file viewing
cat    # View file contents
less   # Page through file
head   # View start of file
tail   # View end of file

# File manipulation
cp     # Copy files
mv     # Move/rename files
rm     # Remove files
mkdir  # Create directory
```

### Terminal Customization
1. Edit `.zshrc` for permanent changes
2. Use `source ~/.zshrc` to reload
3. Add custom aliases and functions

### Performance Tips
1. Use Tab completion instead of typing
2. Learn keyboard shortcuts
3. Use history effectively
4. Create aliases for common commands 