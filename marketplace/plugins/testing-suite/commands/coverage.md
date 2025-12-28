# /coverage

Generate and display code coverage report.

## Arguments

- `$ARGUMENTS`: Coverage threshold or file pattern (optional)

## Usage

```
/coverage
/coverage 80  # Fail if below 80%
/coverage src/
```

## Report Sections

### Summary
- Lines covered: X/Y (Z%)
- Functions covered: X/Y (Z%)
- Branches covered: X/Y (Z%)

### Uncovered Lines
List of files with uncovered lines and suggestions for test cases.

### Trend
Coverage change compared to previous run.

## Thresholds

| Metric | Minimum | Warning |
|--------|---------|---------|
| Lines | 80% | 85% |
| Branches | 75% | 80% |
| Functions | 80% | 85% |
