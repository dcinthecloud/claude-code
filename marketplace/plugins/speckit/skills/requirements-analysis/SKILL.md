# Requirements Analysis

This skill provides techniques for analyzing, evaluating, and improving the quality of requirements and specifications.

## Purpose

Requirements analysis ensures specifications are complete, clear, consistent, and testable before implementation begins. Think of it as "unit tests for English" - validating the quality of requirements themselves.

## Analysis Dimensions

### Completeness
Are all necessary requirements documented?

**Check for**:
- Missing functional requirements
- Undocumented error handling
- Incomplete user journeys
- Missing edge cases

**Example question**: "Are visual hierarchy requirements defined for all card types?"

### Clarity
Are requirements unambiguous and specific?

**Check for**:
- Vague adjectives ("fast", "intuitive", "robust")
- Placeholder text (TODO, TBD, ???)
- Undefined terms
- Measurable criteria

**Example question**: "Is 'prominent display' quantified with specific sizing/positioning?"

### Consistency
Do requirements align with each other?

**Check for**:
- Conflicting requirements
- Terminology drift
- Technology mismatches
- Contradictory constraints

**Example question**: "Are hover state requirements consistent across all interactive elements?"

### Measurability
Can requirements be objectively verified?

**Check for**:
- Quantified success criteria
- Testable acceptance criteria
- Observable outcomes
- Defined thresholds

**Example question**: "Can the requirement 'system is responsive' be objectively measured?"

### Coverage
Are all scenarios and edge cases addressed?

**Check for**:
- Primary flow requirements
- Alternate flows
- Exception/error flows
- Recovery flows
- Non-functional requirements

**Example question**: "Are requirements defined for zero-state scenarios?"

## Ambiguity Detection Patterns

### Vague Adjectives
| Vague | Better |
|-------|--------|
| "Fast loading" | "Page loads in < 2 seconds" |
| "Secure" | "All data encrypted with AES-256" |
| "User-friendly" | "Task completion in < 3 clicks" |
| "Scalable" | "Supports 10,000 concurrent users" |

### Missing Definitions
- "Premium users" → Who qualifies as premium?
- "Recent activity" → What timeframe?
- "Related items" → What algorithm determines relation?

### Undefined Edge Cases
- What happens when the list is empty?
- What if the user submits twice?
- How do we handle network failures?

## Quality Checklist Framework

When analyzing requirements, use this framework:

```markdown
## Requirement Quality Checklist

### Completeness
- [ ] Are all functional requirements documented?
- [ ] Are error handling requirements defined?
- [ ] Are all user roles addressed?

### Clarity  
- [ ] No vague adjectives without quantification?
- [ ] No placeholder text remaining?
- [ ] All terms clearly defined?

### Consistency
- [ ] Requirements don't conflict?
- [ ] Terminology consistent throughout?
- [ ] Constraints align across sections?

### Measurability
- [ ] Success criteria are quantified?
- [ ] Acceptance criteria are testable?
- [ ] Outcomes are observable?

### Coverage
- [ ] All scenario types addressed?
- [ ] Edge cases identified?
- [ ] Non-functional requirements specified?
```

## When to Use This Skill

- Reviewing specifications before planning
- Creating requirement quality checklists
- Training on requirements writing
- Auditing existing specifications
- Preparing for `/speckit.clarify` sessions
