#!/usr/bin/env bash
echo "core::target: hbs::gowin::addVhdlFile: $HBS_TESTS_DIR/SetStd/gowin-invalid-vhdl-std/abc.vhd: invalid VHDL standard '2005', valid standards are: '1987', '1993', '2000', '2002' '2008', '2019'" > golden.txt
../../../hbs/hbs run core::target 2> output.txt
if [[ $? == 1 ]]; then
	exit 0
else
	exit 1
fi