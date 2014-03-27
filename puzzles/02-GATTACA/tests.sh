#!/usr/bin/env bash

. ../assert.sh
. ../report.sh

SOLUTION=$1

TITLE="Sparse Genome"
assert "$SOLUTION 1.in" "$(cat 1.out)"

TITLE="Dense Genome"
assert "$SOLUTION 2.in" "$(cat 2.out)"

TITLE="Degenerate Case"
assert "$SOLUTION 3.in" "$(cat 3.out)"

result=`assert_end $(basename $SOLUTION)`

SCOREBOARD=`basename $SOLUTION`
report_result $result
