#!/bin/bash

# the most using 'for loop' syntaxes

array=`ls` # old fashioned syntax, return strings

echo "${array}"
files="${array}"

# for key in ~/keys/id_*; do
#   echo "something ${key}"
#   cat "${key}"
#done

for file in *; do
    if [[ -x "${file}" ]]; then
        echo "A file ${file} is execuable"
    else
        echo "A file ${file} doesn't execuable"
        echo "Do you want to create a file with this name?"
        read createFileAnswer
        if [[ "${createFileAnswer}" = 'y' ]]; then
            newFile="new${file}"
            touch "${newFile}"
        fi
    fi
done

# for each
for el in {9..12}; do
    echo "For each loop element: ${el}"
    newFile="new${el}.xxx"
    touch "${newFile}"
done
