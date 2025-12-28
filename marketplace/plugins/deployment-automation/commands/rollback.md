# /rollback

Rollback a deployment to a previous version.

## Arguments

- `$ARGUMENTS`: Target version or "previous" for immediate rollback

## Usage

```
/rollback previous
/rollback v1.2.3
/rollback staging --to v1.2.0
```

## Rollback Process

1. Identify target version/revision
2. Verify target version is deployable
3. Execute rollback
4. Verify health checks
5. Notify stakeholders

## Options

- `--dry-run`: Show what would be rolled back without executing
- `--force`: Skip confirmation prompts
- `--to VERSION`: Specify exact version to rollback to
