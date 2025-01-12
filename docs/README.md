# Documentation Guide

## Overview

This documentation is designed to take you from complete beginner to confident C# developer. Every tool, concept, and practice is thoroughly explained.

## Documentation Structure

```
docs/
├── getting-started/    # Everything you need to begin
│   ├── complete-beginners-guide.md   # Start here!
│   ├── what-is-container.md         # Understanding your environment
│   ├── first-steps.md              # Your first day coding
│   ├── setup.md                   # Setting up your system
│   └── troubleshooting.md        # Common problems solved
│
├── development/       # Core development practices
│   ├── coding-standards.md    # Writing clean code
│   ├── testing.md           # Writing and running tests
│   ├── debugging.md        # Finding and fixing problems
│   ├── terminal-tips.md   # Mastering the command line
│   └── ci-cd.md         # Automated testing and deployment
│
├── examples/         # Learn by doing
│   └── number-guessing.md  # Your first C# program
│
└── reference/        # Quick reference guides
    ├── commands.md       # Common commands
    ├── shortcuts.md     # Keyboard shortcuts
    └── aliases.md      # Command shortcuts
```

## How to Use This Documentation

### If You're Completely New to Programming
1. Start with `getting-started/complete-beginners-guide.md`
   - Explains programming concepts
   - Introduces basic terminology
   - Shows you the development environment

2. Move to `getting-started/first-steps.md`
   - Write your first code
   - Learn basic commands
   - Understand the tools

3. Try the examples in `examples/`
   - Follow along with working code
   - Experiment with changes
   - Learn by doing

### If You're New to C# but Know Programming
1. Start with `getting-started/what-is-container.md`
   - Understand the development environment
   - Learn C#-specific tools
   - Set up your workspace

2. Review `development/coding-standards.md`
   - Learn C# best practices
   - Understand naming conventions
   - See code organization

3. Explore `development/testing.md`
   - Learn test-driven development
   - Write your first tests
   - Understand test organization

### If You're Experienced with C#
1. Check `development/ci-cd.md`
   - Understand our CI/CD pipeline
   - Learn about automated testing
   - See deployment practices

2. Review `reference/`
   - Quick command reference
   - Keyboard shortcuts
   - Productivity tips

## Viewing the Documentation

### In VS Code
1. Open any `.md` file
2. Press `Ctrl+Shift+V` to preview
3. Or install "Markdown All in One" extension for better viewing

### In Web Browser (Recommended)
1. Open terminal in VS Code
2. Start the docs server:
   ```bash
   # Start documentation server
   mkdocs serve

   # If that doesn't work, try:
   python -m mkdocs serve
   ```
3. Open http://localhost:8000 in your browser
4. Navigate using the sidebar

### Documentation Features
- 🔍 Full-text search
- 📚 Table of contents
- 🔗 Cross-linking between pages
- 💻 Code syntax highlighting
- 📱 Mobile-friendly

## Contributing to Documentation

### Adding New Pages
1. Create `.md` file in appropriate folder
2. Add to `mkdocs.yml` under `nav:`
3. Follow existing formatting

### Style Guide
- Use clear, simple language
- Include lots of examples
- Explain the "why" not just the "how"
- Add code snippets where helpful

### Code Examples Should:
- Be complete and runnable
- Include comments
- Show output
- Demonstrate best practices

## Getting Help

If something isn't clear:
1. Check `getting-started/troubleshooting.md`
2. Look for related examples
3. Create an issue on GitHub
4. Ask in Discussions

Remember: Good documentation is never finished. If you find something unclear or missing, please let us know! 