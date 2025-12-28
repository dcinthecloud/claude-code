# /branch

Create and manage git branches with naming conventions.

## Arguments

- `$ARGUMENTS`: Branch type and name

## Usage

```
/branch feature user-auth
/branch bugfix login-issue
/branch release 2.0.0
/branch --list
/branch --delete feature/old-branch
```

## Branch Types

| Type | Pattern | Purpose |
|------|---------|---------|
| feature | feature/name | New features |
| bugfix | bugfix/name | Bug fixes |
| hotfix | hotfix/name | Urgent fixes |
| release | release/version | Release prep |
| experiment | experiment/name | Experiments |

## Auto-Features

- Validates branch name against conventions
- Creates from appropriate base branch
- Sets up tracking with remote
- Configures merge strategy

## Options

- `--from BRANCH`: Create from specific branch
- `--list`: List branches by type
- `--delete NAME`: Delete local and remote branch
- `--sync`: Sync with remote branches
