# /audit-deps

Audit project dependencies for known vulnerabilities.

## Arguments

- `$ARGUMENTS`: Package manager or lockfile path (optional)

## Usage

```
/audit-deps
/audit-deps package-lock.json
/audit-deps --fix
```

## Supported Package Managers

- npm / yarn / pnpm (Node.js)
- pip / poetry / pipenv (Python)
- cargo (Rust)
- go mod (Go)
- bundler (Ruby)

## Output

### Vulnerability Summary
- Total dependencies scanned
- Vulnerable packages found
- Severity distribution

### Per-Vulnerability Details
- Package name and version
- CVE ID and description
- CVSS score
- Fixed version (if available)
- Upgrade path

## Options

- `--fix`: Automatically update vulnerable dependencies
- `--production`: Only check production dependencies
- `--ignore VULN_ID`: Ignore specific vulnerability
