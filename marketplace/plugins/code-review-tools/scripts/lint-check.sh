#!/bin/bash
# lint-check.sh - Post-write hook for linting
# Executed after Write|Edit tool operations

set -e

FILE="${1:-}"

if [ -z "$FILE" ]; then
    echo "No file provided for linting"
    exit 0
fi

# Determine file type and run appropriate linter
case "$FILE" in
    *.py)
        if command -v ruff &> /dev/null; then
            ruff check "$FILE" --fix --quiet 2>/dev/null || true
        fi
        ;;
    *.ts|*.tsx|*.js|*.jsx)
        if command -v eslint &> /dev/null; then
            eslint "$FILE" --fix --quiet 2>/dev/null || true
        fi
        ;;
    *.go)
        if command -v gofmt &> /dev/null; then
            gofmt -w "$FILE" 2>/dev/null || true
        fi
        ;;
esac

echo "Lint check completed for: $FILE"
