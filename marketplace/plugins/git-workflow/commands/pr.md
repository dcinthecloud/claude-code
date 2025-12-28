# /pr

Create or manage pull requests.

## Arguments

- `$ARGUMENTS`: Action or PR number

## Usage

```
/pr create
/pr update #123
/pr review #123
/pr merge #123
```

## Actions

### Create PR (`/pr create`)
1. Analyzes commits since branch creation
2. Generates title and description
3. Links related issues
4. Assigns reviewers based on CODEOWNERS
5. Adds appropriate labels

### Update PR (`/pr update`)
1. Updates description with new changes
2. Resolves merge conflicts if any
3. Updates linked issues

### Review PR (`/pr review`)
1. Fetches and analyzes changes
2. Provides code review comments
3. Suggests improvements

### Merge PR (`/pr merge`)
1. Verifies CI checks passed
2. Confirms approvals received
3. Performs merge (squash by default)

## PR Template

```markdown
## Description
[Auto-generated summary of changes]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Breaking change
- [ ] Documentation update

## Testing
[How changes were tested]

## Related Issues
Closes #[issue_number]
```
