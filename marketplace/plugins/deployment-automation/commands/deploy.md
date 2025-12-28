# /deploy

Initiate a deployment to the specified environment.

## Arguments

- `$ARGUMENTS`: Environment name (staging, production, preview)

## Usage

```
/deploy staging
/deploy production --dry-run
/deploy preview --branch feature/my-feature
```

## Deployment Process

1. **Pre-flight checks**: Validate configuration and credentials
2. **Build**: Create deployment artifacts
3. **Test**: Run integration tests against artifacts
4. **Deploy**: Push to target environment
5. **Verify**: Health checks and smoke tests
6. **Notify**: Send deployment notifications

## Environment Variables Required

- `DEPLOY_TOKEN`: Deployment authentication token
- `KUBECONFIG`: Kubernetes configuration path

## Safety Features

- Automatic rollback on failure
- Deployment locks to prevent concurrent deploys
- Audit logging of all deployment actions
