#!/bin/sh

AGTAG=${AGTAG:=./agtag}

actual="$(mktemp)"

for t in tests/*
do
	$AGTAG "$t/input" | sort > "$actual"
	diff -w "$actual" "$t/expected" || echo "Failed: $t"
done

rm "$actual"
