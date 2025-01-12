# Git Workflow Guide

## Basic Git Commands

### Daily Commands
```bash
# Update your local copy
git pull

# See what's changed
git status

# Stage changes
git add .

# Commit changes
git commit -m "Description of changes"

# Push to remote
git push
```

### Working with Branches

```bash
# Create new branch
git checkout -b feature/new-feature

# Switch branches
git checkout main

# List branches
git branch

# Delete branch
git branch -d feature/old-feature
```

## Best Practices

### 1. Commit Messages
```bash
# Good commit messages
git commit -m "Add player health system"
git commit -m "Fix null reference in score calculation"

# Bad commit messages
git commit -m "fix"
git commit -m "updates"
```

### 2. Branch Naming
```bash
feature/add-multiplayer    # New features
bugfix/fix-crash          # Bug fixes
docs/update-readme        # Documentation
test/add-player-tests     # Test additions
```

### 3. Pull Requests
- Keep changes focused
- Add clear descriptions
- Reference related issues
- Include test coverage

## Common Scenarios

### 1. Undo Last Commit
```bash
# Undo commit but keep changes
git reset --soft HEAD~1

# Undo commit and discard changes
git reset --hard HEAD~1
```

### 2. Fix Merge Conflicts
```bash
# When conflict occurs
git status                # See conflicted files
code conflicted-file.cs   # Edit conflicts
git add conflicted-file.cs
git commit               # Complete the merge
```

### 3. Update Feature Branch
```bash
# Update from main
git checkout feature/my-feature
git merge main

# Or rebase (if you prefer)
git rebase main
```

## VS Code Git Integration

### 1. Source Control Panel
- Click `⌃⇧G` to open
- See changed files
- Stage and commit changes
- Push/pull changes

### 2. GitLens Features
- Blame annotations
- File history
- Branch comparison
- Repository visualization

### 3. Common Actions
- Stage changes: Click `+`
- Commit: Enter message and ✓
- Push: Click cloud icon
- Pull: Click refresh icon 