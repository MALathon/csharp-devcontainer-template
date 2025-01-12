# Continuous Integration & Deployment

## What Is CI/CD?

Think of CI/CD like an automatic quality checker for your code:
- 🔍 Checks your code every time you make changes
- ✅ Makes sure everything still works
- 🚀 Helps catch problems early

## How It Works

1. **When You Push Code**
   - GitHub sees your new code
   - Automatically starts checking it
   - Shows you if anything's wrong

2. **What It Checks**
   ```yaml
   # This happens automatically:
   ✓ Builds your code
   ✓ Runs your tests
   ✓ Makes sure everything works together
   ```

3. **Where to See Results**
   - Look for ✅ or ❌ next to your commits
   - Click "Actions" tab in GitHub
   - See detailed results

## Common Status Badges

```markdown
✅ Green Check = Everything's good
❌ Red X = Something needs fixing
🟡 Yellow Dot = Still checking
```

## If Something Fails

1. **Check the Logs**
   - Click the red ❌
   - Look for error messages
   - See which test failed

2. **Common Issues**
   ```bash
   # Failed to build
   - Check for syntax errors
   - Make sure all files are committed

   # Tests failed
   - Run tests locally first:
   dotnet test
   
   # Missing dependencies
   - Check your .csproj file
   - Run dotnet restore
   ```

## Best Practices

1. **Before Pushing**
   ```bash
   # Run these locally first
   dotnet build
   dotnet test
   ```

2. **Check Status**
   - Wait for checks to complete
   - Fix any issues promptly
   - Keep main branch stable

## Understanding the Configuration

Our `.github/workflows/ci.yml` explained:

```yaml
# When does it run?
on:
  push:        # When you push code
  pull_request # When you make a PR

# What does it do?
steps:
  1. Gets your code
  2. Sets up .NET
  3. Builds everything
  4. Runs all tests
```

## Why We Use CI/CD

1. **Catches Problems Early**
   - Find bugs before they reach main
   - Keep code quality high
   - Save time fixing issues

2. **Helps Team Work**
   - Everyone knows if code works
   - Builds confidence in changes
   - Makes collaboration easier

3. **Professional Practice**
   - Used in real development
   - Important skill to learn
   - Makes coding more reliable 