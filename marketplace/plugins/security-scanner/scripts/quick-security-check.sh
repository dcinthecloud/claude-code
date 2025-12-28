#!/bin/bash
# quick-security-check.sh - Fast security checks on modified files

set -e

FILE="${1:-}"

if [ -z "$FILE" ]; then
    exit 0
fi

echo "Running quick security check on: $FILE"

# Check for common secrets patterns
SECRETS_PATTERNS=(
    "password\s*=\s*['\"][^'\"]+['\"]"
    "api_key\s*=\s*['\"][^'\"]+['\"]"
    "secret\s*=\s*['\"][^'\"]+['\"]"
    "AWS_ACCESS_KEY_ID"
    "PRIVATE KEY"
)

for pattern in "${SECRETS_PATTERNS[@]}"; do
    if grep -iE "$pattern" "$FILE" 2>/dev/null; then
        echo "⚠️  Potential secret detected: $pattern"
    fi
done

# Check for dangerous functions (language-specific)
case "$FILE" in
    *.py)
        # Python dangerous functions
        grep -n "eval\|exec\|os\.system\|subprocess\.call.*shell=True" "$FILE" 2>/dev/null && \
            echo "⚠️  Potentially dangerous function usage in Python"
        ;;
    *.js|*.ts)
        # JavaScript dangerous functions
        grep -n "eval\|innerHTML\|document\.write\|new Function" "$FILE" 2>/dev/null && \
            echo "⚠️  Potentially dangerous function usage in JavaScript"
        ;;
    *.go)
        # Go dangerous patterns
        grep -n "exec\.Command\|fmt\.Sprintf.*sql" "$FILE" 2>/dev/null && \
            echo "⚠️  Potentially dangerous pattern in Go"
        ;;
esac

echo "Quick security check completed"
