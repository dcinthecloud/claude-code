# /commit

Create a well-formatted commit message based on staged changes.

## Arguments

- `$ARGUMENTS`: Optional type prefix or additional context

## Usage

```
/commit
/commit feat
/commit fix: login issue
/commit --amend
```

## Commit Format

Follows [Conventional Commits](https://www.conventionalcommits.org/):

```
<type>(<scope>): <description>

[optional body]

[optional footer(s)]
```

### Types

- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Code formatting
- `refactor`: Code restructuring
- `perf`: Performance improvements
- `test`: Adding tests
- `chore`: Maintenance tasks
- `ci`: CI/CD changes

## Auto-Detection

Analyzes staged changes to:
- Determine appropriate commit type
- Identify affected scope/component
- Generate concise description
- Add breaking change notices if applicable

## Options

- `--amend`: Amend previous commit
- `--no-verify`: Skip pre-commit hooks
- `--scope SCOPE`: Specify scope explicitly
