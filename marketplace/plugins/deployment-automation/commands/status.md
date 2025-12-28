# /status

Check deployment status and health.

## Arguments

- `$ARGUMENTS`: Service or environment name (optional)

## Usage

```
/status
/status api-service
/status staging
```

## Information Displayed

- Current deployed version
- Deployment timestamp
- Health check status
- Resource utilization
- Recent deployments history
- Active alerts or issues

## Output Sections

### Service Health
| Service | Version | Status | Pods |
|---------|---------|--------|------|
| api     | v2.1.0  | ✅     | 3/3  |
| web     | v2.1.0  | ✅     | 2/2  |
| worker  | v2.0.9  | ⚠️     | 1/2  |

### Recent Deployments
Shows last 5 deployments with status and rollback links.
