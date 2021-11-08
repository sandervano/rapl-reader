#!/bin/bash
# Script to run an experiment for one or more Java Files.
# A new file in a given programming language can be added by following the below structure:
#
# ./run.sh 'language.script' 'path' '.file_ending' 'arguments'
#
# ./run.sh:        Runs is the script that runs all the experiments.
# language.script: The script that launches a program of the specific language must be linked by relative path
# path:            The relative path of the program in the codebase folder
# file_ending:     The file ending of the executable.
# arguments:       Any command line arguments

./run.sh 'run_prog_java.sh' 'java/hello_world' '.class' ''
