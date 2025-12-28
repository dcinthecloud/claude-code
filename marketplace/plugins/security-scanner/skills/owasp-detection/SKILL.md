# OWASP Top 10 Detection Skill

This skill identifies and provides remediation for OWASP Top 10 vulnerabilities.

## OWASP Top 10 (2021)

### A01:2021 - Broken Access Control
**Detection**: Improper authorization checks, IDOR vulnerabilities
**Remediation**: Implement proper access controls, deny by default

### A02:2021 - Cryptographic Failures
**Detection**: Weak algorithms, hardcoded keys, insufficient encryption
**Remediation**: Use strong algorithms, proper key management

### A03:2021 - Injection
**Detection**: SQL injection, command injection, LDAP injection
**Remediation**: Parameterized queries, input validation

### A04:2021 - Insecure Design
**Detection**: Missing security controls in design
**Remediation**: Threat modeling, secure design patterns

### A05:2021 - Security Misconfiguration
**Detection**: Default credentials, unnecessary features, verbose errors
**Remediation**: Hardening guides, minimal installation

### A06:2021 - Vulnerable Components
**Detection**: Outdated dependencies with known CVEs
**Remediation**: Regular updates, dependency scanning

### A07:2021 - Identification Failures
**Detection**: Weak authentication, session fixation
**Remediation**: MFA, secure session management

### A08:2021 - Software and Data Integrity
**Detection**: Unsigned updates, insecure deserialization
**Remediation**: Digital signatures, integrity verification

### A09:2021 - Security Logging Failures
**Detection**: Missing logs, exposed sensitive data in logs
**Remediation**: Comprehensive logging, log protection

### A10:2021 - SSRF
**Detection**: Unvalidated redirects, server-side requests
**Remediation**: URL validation, network segmentation

## Integration

Works with the Security Analyst agent and LSP servers for comprehensive vulnerability detection.
