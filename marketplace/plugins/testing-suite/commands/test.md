# /test

Run tests for the current project or specified file/pattern.

## Arguments

- `$ARGUMENTS`: Test file, pattern, or test name (optional)

## Usage

```
/test
/test auth
/test test_user_service.py
/test --coverage
/test --watch
```

## Test Types

- **Unit Tests**: Fast, isolated tests for individual functions
- **Integration Tests**: Tests for component interactions
- **E2E Tests**: Full workflow tests

## Options

- `--coverage`: Generate coverage report
- `--watch`: Run in watch mode
- `--verbose`: Detailed test output
- `--parallel`: Run tests in parallel
- `--filter NAME`: Run only matching tests

## Output

Results include:
- Pass/fail counts
- Execution time
- Coverage percentage (if enabled)
- Failed test details with stack traces
