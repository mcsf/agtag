#!/bin/sh

: "${AGTAG:=./agtag}"

errors=0

for t in tests/*
do
	if ! $AGTAG "$t/input" | diff - "$t/expected"
	then
		echo "Failed: $t"
		: $((errors += 1))
	fi
done

exit "$errors"
