#!/bin/bash
echo "Running automated tests for CI/CD pipeline..."

# Test 1: Verify index.html exists
if [ -f "index.html" ]; then
  echo "Test 1 PASSED: index.html exists"
else
  echo "TEST FAILED: index.html missing"
  exit 1
fi

# Test 2: Verify CI/CD content in HTML
if grep -q "CI/CD Pipeline" index.html; then
  echo "Test 2 PASSED: CI/CD content verified"
else
  echo "TEST FAILED: Missing CI/CD Pipeline text"
  exit 1
fi

# Test 3: Verify package.json exists
if [ -f "package.json" ]; then
  echo "Test 3 PASSED: package.json exists"
else
  echo "TEST FAILED: package.json missing"
  exit 1
fi

echo "All 3 tests PASSED successfully!"
