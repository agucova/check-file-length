#!/usr/bin/env bash
returnCode=0
for i in "$@"; do
	 length="$(wc -l < "$i" | xargs)"
	 if [[ "$length" -gt "400" ]] ; then
	 	echo "$i: $length"
	 	returnCode=1
	 fi
done

exit $returnCode
