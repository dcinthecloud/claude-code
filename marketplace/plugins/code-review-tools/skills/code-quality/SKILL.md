# Code Quality Analysis Skill

This skill enables comprehensive code quality analysis using industry-standard metrics and best practices.

## Capabilities

This skill can:

- Analyze cyclomatic and cognitive complexity
- Identify code smells and anti-patterns
- Measure test coverage implications
- Assess maintainability index
- Generate actionable improvement suggestions

## Usage Context

Invoke this skill when:

- Starting a code review session
- Analyzing legacy code for refactoring
- Preparing quality reports

## Metrics Evaluated

| Metric | Description | Target |
|--------|-------------|--------|
| Cyclomatic Complexity | Decision point count | < 10 per function |
| Cognitive Complexity | Readability score | < 15 per function |
| Function Length | Lines of code | < 50 lines |
| Parameter Count | Function parameters | < 5 parameters |
| Nesting Depth | Indentation levels | < 4 levels |

## Integration

This skill works with the code-reviewer agent and complexity command for comprehensive analysis.
