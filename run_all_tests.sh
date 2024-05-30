#!/bin/bash

TEST_DIR="src/test/java/org/jfree"

for test_file in $(find "$TEST_DIR" -name "*Test.java"); do
    # Extract relative path to directory TEST_DIR
    relative_path="${test_file#$TEST_DIR/}"

    # Replace slash (/) for dots (.)
    test_path=$(echo "$relative_path" | tr / .)

    # Removes extension .java
    test_path="${test_path%.java}"

    echo "Running test: $test_path"
    ./run_test.sh jamvm "$test_path"
    echo "-------------------------"
done
