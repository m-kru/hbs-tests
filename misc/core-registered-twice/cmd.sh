#!/bin/bash
../../../hbs/hbs list-cores 2> output.txt
if [[ $? == 1 ]]; then
	exit 0
else
	exit 1
fi
