# What is a Dev Container?

## The Simple Explanation

Think of a dev container like a pre-packed toolbox that:
- Has all the tools you need
- Works the same on every computer
- Keeps your coding environment clean

### Why Use It?

1. **Everything's Ready**
   - No installing lots of programs
   - No complex setup
   - Just open and code

2. **Can't Break Anything**
   - Container is separate from your computer
   - Easy to reset if something goes wrong
   - Safe to experiment

3. **Works Everywhere**
   - Same experience on Windows, Mac, Linux
   - No "works on my machine" problems
   - Share exact setup with others

## Using the Container

### First Time
1. Open VS Code
2. You'll see this notification:
   ```
   Folder contains a Dev Container configuration file.
   Reopen folder to develop in a container.
   ```
3. Click "Reopen in Container"
4. Wait for setup (about 5-10 minutes)

### Every Day
1. Open VS Code
2. Container starts automatically
3. Green bar at bottom means you're in the container
4. Red bar means something's wrong (see Troubleshooting)

### Signs Everything's Working
✅ Bottom left shows "Dev Container"
✅ Terminal works and shows colors
✅ IntelliSense (code completion) works
✅ Can run `dotnet` commands

### Signs Something's Wrong
❌ Can't open terminal
❌ No IntelliSense
❌ "Docker not running" error
❌ Terminal shows "WSL" instead of container

## Common Questions

### "Why is it so slow the first time?"
- Container is downloading tools
- Like setting up a new computer
- Only slow the first time

### "Do I need to restart the container?"
- Usually no
- Container starts with VS Code
- Stops when you close VS Code

### "What if something breaks?"
1. Try "Rebuild Container"
   - Ctrl+Shift+P
   - Type "rebuild"
   - Select "Rebuild Container"

2. Or start fresh:
   - Delete container in Docker Desktop
   - Reopen in VS Code

### "Where are my files?"
- Your code is safe on your computer
- Container can see your files
- Changes save normally

## Next Steps

1. Read "First Steps" guide
2. Try creating a project
3. Run some example code
4. Check out debugging guide 