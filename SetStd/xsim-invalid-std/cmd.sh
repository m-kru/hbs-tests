#!/usr/bin/env bash
echo "core::target: hbs::xsim::addHdlFile: $HBS_TESTS_DIR/SetStd/xsim-invalid-std/abc.vhd: invalid VHDL standard '2005', standards supported by xsim are: '1993', '2000', '2002', '2008' (default)" > golden.txt
../../../hbs/hbs run core::target 2> output.txt
if [[ $? == 1 ]]; then
	exit 0
else
	exit 1
fi