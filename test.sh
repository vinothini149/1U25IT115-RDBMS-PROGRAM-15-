#!/bin/bash

set -e

echo "=========================================="
echo " PL/SQL IF-ELSE AUTOGRADING"
echo "=========================================="

run_test() {

    MARKS=$1
    EXPECTED=$2

    echo ""
    echo "------------------------------------------"
    echo "Input Marks : $MARKS"
    echo "Expected    : $EXPECTED"
    echo "------------------------------------------"

    cat > /tmp/input.sql <<EOF
SET SERVEROUTPUT ON
DEFINE marks = $MARKS
@/workspace/answers.sql
EXIT;
EOF

    docker cp /tmp/input.sql oracle-free:/workspace/input.sql

    docker exec oracle-free \
        bash -c "sqlplus -s SYSTEM/Oracle123@FREEPDB1 @/workspace/input.sql" \
        > output.txt 2>&1

    cat output.txt

    if grep -q "$EXPECTED" output.txt; then
        echo "TEST PASSED"
    else
        echo "TEST FAILED"
        echo "Expected: $EXPECTED"
        exit 1
    fi
}

run_test 35 "FAIL"
run_test 40 "PASS"
run_test 75 "PASS"
run_test 20 "FAIL"
run_test 100 "PASS"

echo ""
echo "=========================================="
echo " ALL TEST CASES PASSED"
echo "=========================================="
