#!/bin/bash

set -e

test_count=0

for dir in $(find . -maxdepth 1 -mindepth 1 -type d | sort);
do
	if [[ $dir == "./.git" ]]; then
		continue
	fi
	echo "$dir"
	cd "$dir"
	./cmd.sh
	diff --color output.txt golden.txt
	rm output.txt
	cd ..
	test_count=$(expr $test_count + 1)
done

echo -e "\nAll ($test_count) \e[1;32mPASSED\e[0m!"
