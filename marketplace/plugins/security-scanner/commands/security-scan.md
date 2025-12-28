# /security-scan

Run a comprehensive security scan on the codebase or specific files.

## Arguments

- `$ARGUMENTS`: File, directory, or scan type (optional)

## Usage

```
/security-scan
/security-scan src/
/security-scan --type secrets
/security-scan --severity high
```

## Scan Types

- **SAST**: Static Application Security Testing
- **Secrets**: Detect hardcoded credentials and API keys
- **Dependencies**: Vulnerable dependency detection
- **Configuration**: Security misconfigurations
- **Code Patterns**: Known vulnerable code patterns

## Severity Levels

| Level | Description |
|-------|-------------|
| Critical | Immediate exploitation risk |
| High | Significant security risk |
| Medium | Moderate security concern |
| Low | Minor security issue |
| Info | Security best practice |

## Output

For each finding:
1. Location (file:line)
2. Severity level
3. Vulnerability type (CWE ID)
4. Description and impact
5. Remediation guidance
6. References (CVE, OWASP, etc.)
