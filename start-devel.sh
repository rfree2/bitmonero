#!/bin/bash
# This script runs one of the scripted commands to start the program in developer mode
# Argument $1 must be the name of variant e.g. "fast" for build/fast/ , or "debug"

project=Monero
variant=$1
echo "Starting developer version of $project, variant=$variant"

if [[ "$DEVELOPER_LOCAL_TOOLS" == 1 ]] ; then
	echo "Using LOCAL TOOLS, will export needed local libs (like boost etc)"
	export LD_LIBRARY_PATH="$HOME/.local/lib:$HOME/.local/lib64"
else
	echo "Not using local tools, will use global libraries"
fi

echo
echo "-------------------------------------"
echo

if [[ ! -x main-program.local ]] ;
then
	source ./main-program $variant
else
	echo "(will run main-program.local)"
	source main-program.local $variant
fi
