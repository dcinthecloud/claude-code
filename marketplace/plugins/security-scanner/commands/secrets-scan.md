# /secrets-scan

Scan for exposed secrets, API keys, and credentials.

## Arguments

- `$ARGUMENTS`: Directory or file to scan (optional, defaults to current directory)

## Usage

```
/secrets-scan
/secrets-scan src/
/secrets-scan --include-history
```

## Detection Capabilities

### API Keys
- AWS access keys
- Google Cloud credentials
- Azure tokens
- GitHub tokens
- Stripe keys
- Many more...

### Credentials
- Database connection strings
- Private keys (SSH, GPG)
- OAuth tokens
- JWT secrets
- Password patterns

### Sensitive Data
- Personal Identifiable Information (PII)
- Credit card numbers
- Social security numbers

## Options

- `--include-history`: Scan git history for leaked secrets
- `--baseline FILE`: Compare against baseline to show only new findings
- `--format [json|sarif|text]`: Output format

## Remediation

For each finding, provides:
1. Steps to rotate/revoke the credential
2. How to remove from git history (if applicable)
3. Best practices for secret management
