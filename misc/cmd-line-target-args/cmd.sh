#!/bin/bash
../../../hbs/hbs run core::target > output.txt
../../../hbs/hbs run core::target foo >> output.txt
../../../hbs/hbs run core::target foo bar >> output.txt
