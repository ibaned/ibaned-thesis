#!/bin/bash -x
git latexdiff --tmpdirprefix $PWD --cleanup keeppdf -b --no-view $1 --
