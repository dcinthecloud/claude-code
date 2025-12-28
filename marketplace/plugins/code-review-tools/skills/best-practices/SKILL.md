# Best Practices Checker Skill

This skill validates code against language-specific and project-specific best practices.

## Capabilities

- Validate naming conventions
- Check import organization
- Verify documentation presence
- Assess error handling patterns
- Review type annotation usage

## Supported Languages

- Python: PEP 8, Google style guide
- TypeScript: ESLint recommended, Airbnb style
- Go: Effective Go, Go Code Review Comments
- Rust: Clippy lints, Rust API Guidelines

## Best Practice Categories

### Code Organization
- Module structure
- Import ordering
- File length limits

### Naming Conventions
- Variables: camelCase, snake_case as appropriate
- Classes: PascalCase
- Constants: SCREAMING_SNAKE_CASE

### Documentation
- Docstrings present for public APIs
- README files for packages
- Inline comments for complex logic

## Output

Generates a checklist-style report with pass/fail/warning status for each category.
