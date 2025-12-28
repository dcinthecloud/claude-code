#!/bin/bash
# check-test-status.sh - Session start hook to check test suite health

set -e

echo "=== Test Suite Status ==="

# Check for test configuration files
if [ -f "pytest.ini" ] || [ -f "pyproject.toml" ]; then
    echo "Python test framework: pytest"
fi

if [ -f "jest.config.js" ] || [ -f "jest.config.ts" ]; then
    echo "JavaScript test framework: jest"
fi

if [ -f "vitest.config.ts" ]; then
    echo "JavaScript test framework: vitest"
fi

# Count test files
PYTHON_TESTS=$(find . -name "test_*.py" -o -name "*_test.py" 2>/dev/null | wc -l | tr -d ' ')
JS_TESTS=$(find . -name "*.test.ts" -o -name "*.test.js" 2>/dev/null | wc -l | tr -d ' ')

echo "Test files found:"
echo "  Python: $PYTHON_TESTS"
echo "  JavaScript/TypeScript: $JS_TESTS"

# Check recent test results if available
if [ -f ".coverage" ]; then
    echo "Coverage data available from previous run"
fi

echo "==========================="
