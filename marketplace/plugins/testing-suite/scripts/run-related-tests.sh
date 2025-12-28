#!/bin/bash
# run-related-tests.sh - Find and run tests related to changed files

set -e

FILE="${1:-}"

if [ -z "$FILE" ]; then
    exit 0
fi

# Extract base name without extension
BASENAME=$(basename "${FILE%.*}")
DIR=$(dirname "$FILE")

# Find related test files
find_tests() {
    local patterns=(
        "test_${BASENAME}.py"
        "${BASENAME}_test.py"
        "${BASENAME}.test.ts"
        "${BASENAME}.test.js"
        "${BASENAME}_test.go"
    )
    
    for pattern in "${patterns[@]}"; do
        find . -name "$pattern" -type f 2>/dev/null | head -1
    done
}

TESTS=$(find_tests)

if [ -n "$TESTS" ]; then
    echo "Running related tests for: $FILE"
    # Detect test runner and execute
    if echo "$TESTS" | grep -q "\.py$"; then
        python -m pytest "$TESTS" -v 2>/dev/null || true
    elif echo "$TESTS" | grep -q "\.ts$\|\.js$"; then
        npm test -- "$TESTS" 2>/dev/null || true
    elif echo "$TESTS" | grep -q "\.go$"; then
        go test "$TESTS" -v 2>/dev/null || true
    fi
fi
