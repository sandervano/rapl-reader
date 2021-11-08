#!/bin/bash
#
# Main script to run the entire experiment.
# Programs to be run can be added here or to scripts linked here, but should follow the following structure:
#
# ./run.sh 'language.script' 'path' '.file_ending' 'arguments'
#
# ./run.sh:        Runs is the script that runs all the experiments.
# language.script: The script that launches an executable of the specific language must be linked by relative path
# path:            The relative path of the executables in the codebase folder
# file_ending:     The file ending of the executable.
# arguments:       Any command line arguments.

#Java:
./run_java.sh

#C++
./run_cplus.sh

#Python
./run_python.sh
