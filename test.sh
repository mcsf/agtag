#!/bin/sh

AGTAG=${AGTAG:=./agtag}

for t in tests/*
do
	$AGTAG "$t/input" | diff - "$t/expected" || echo "Failed: $t"
done
