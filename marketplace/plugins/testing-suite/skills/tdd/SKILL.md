# Test-Driven Development Skill

This skill provides guidance and automation for Test-Driven Development workflows.

## TDD Cycle

1. **RED**: Write a failing test first
2. **GREEN**: Write minimal code to pass the test
3. **REFACTOR**: Clean up while keeping tests green

## Capabilities

- Guide through TDD workflow
- Generate failing tests before implementation
- Suggest minimal implementation
- Identify refactoring opportunities
- Track TDD cycle progress

## When to Use

Invoke this skill when:

- Starting a new feature implementation
- Practicing TDD methodology
- Teaching TDD to team members
- Reviewing code for TDD compliance

## Templates

### Python (pytest)
```python
def test_feature_does_something():
    # Arrange
    input_data = ...
    
    # Act
    result = feature(input_data)
    
    # Assert
    assert result == expected
```

### TypeScript (jest)
```typescript
describe('Feature', () => {
  it('should do something', () => {
    // Arrange
    const input = ...;
    
    // Act
    const result = feature(input);
    
    // Assert
    expect(result).toBe(expected);
  });
});
```

## Integration

Works with the QA Engineer agent and generate-tests command for comprehensive TDD support.
