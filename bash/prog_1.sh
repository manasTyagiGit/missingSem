#!/bin/bash

echo "starting a program at :: $(date)"

echo "running program: $0 with $# arguments, and the pid :: $$"

for file in "$@" ; do
    grep foobar "$file" > /dev/null 2> /dev/null

    if [[ "$?" -ne 0 ]]; then
        echo "File $file does not have string foobar"

        echo "#foobar  " >> "$file"
    fi

done