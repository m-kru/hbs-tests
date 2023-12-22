#!/bin/bash

set -e

for dir in $(find . -maxdepth 1 -mindepth 1 -type d | sort);
do
	if [[ $dir == "./.git" ]]; then
		continue
	fi
	echo "$dir"
	cd $dir
	./cmd.sh
	diff --color output.txt golden.txt
	rm output.txt
	cd ..
done

echo -e "\nAll \e[1;32mPASSED\e[0m!"
