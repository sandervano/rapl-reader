#!/bin/bash
#
# Run a c++ executable.
#
# Other languages can be supported by setting up how to execute a given executable
# in the given language with given arguments, replacing the actual path with $1,
# the actual filename woth $2 and the command line arguments with $3.
# Output is discarded to /dev/null

Path=$1
Filename=$2
Arg=$3

cd ${Path}
python3 ${Filename}.py ${Arg} > /dev/null 2>&1
