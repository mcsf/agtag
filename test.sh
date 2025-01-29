#!/bin/sh

: "${AGTAG:=./agtag}"

errors=0

BOLD=$(tput bold)
RSET=$(tput sgr0)

for t in tests/*
do
	if ! $AGTAG "$t/input" | diff --color=always - "$t/expected"
	then
		printf "${BOLD}%s${RSET}\n" "Failed: $t"
		: $((errors += 1))
	fi
done

exit "$errors"
