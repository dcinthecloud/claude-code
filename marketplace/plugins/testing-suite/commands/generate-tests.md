# /generate-tests

Generate test cases for the specified code.

## Arguments

- `$ARGUMENTS`: Function, class, or file to generate tests for

## Usage

```
/generate-tests UserService
/generate-tests src/auth/login.py
/generate-tests calculate_total
```

## Generated Test Types

1. **Happy Path**: Normal operation scenarios
2. **Edge Cases**: Boundary conditions and limits
3. **Error Cases**: Invalid inputs and exceptions
4. **Null/Empty**: Handling of null/undefined/empty values

## Output

Generates a complete test file with:
- Proper imports and setup
- Fixture definitions
- Parameterized test cases
- Mocking for dependencies

## Test Framework Detection

Automatically detects and uses:
- Python: pytest
- JavaScript/TypeScript: jest or vitest
- Go: testing package
- Rust: built-in test framework
