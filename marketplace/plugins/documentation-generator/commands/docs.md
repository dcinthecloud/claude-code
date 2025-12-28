# /docs

Generate documentation for the specified code or project.

## Arguments

- `$ARGUMENTS`: File, function, class, or "project" for full docs

## Usage

```
/docs UserService
/docs src/api/
/docs project
/docs README
```

## Documentation Types

### Code Documentation
- Docstrings (Python)
- JSDoc (JavaScript/TypeScript)
- GoDoc (Go)
- RustDoc (Rust)

### Project Documentation
- README.md generation/update
- CONTRIBUTING.md
- CHANGELOG.md
- API documentation

## Output Styles

- **Concise**: Brief, essential information only
- **Detailed**: Comprehensive with examples
- **Tutorial**: Step-by-step with explanations

## Parameters

- `--style [concise|detailed|tutorial]`: Documentation style
- `--format [md|rst|html]`: Output format
- `--include-examples`: Add code examples
- `--include-tests`: Include test case documentation
