#!/usr/bin/env bash
length="$(wc -l < "$1" | xargs)"
if [[ "$length" -gt "400" ]] ; then
	echo "$i: $length"
	exit 1
fi
