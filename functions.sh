#!/bin/bash

########################################################
# Some useful description
# Global:
#   - HOME, PATH, etc.
# Arguments:
#   - four strings  (or None)
########################################################

echo "These argumens were passed as argv[] array:"
echo "     $@"

# preferred function syntax variant
clean() {         # bash function arguments are passed implicitly
    echo "Now a function 'clean()' is going to clean a current directory.."
    echo "The first argument is: $1"
    echo "And these are all the arguments: $* (as a string)"
    echo "And these are all  arguments: $@ (as an array)"

    local index=0  # by default in bash variables have no visibility limits
    for arg in "$@"; do
        echo "Index: ${index}. Argument: ${arg}"
        (( index++ ))
    done
    return 0   # setting of exitStatus
}


function newFunc() {
    echo "Hi, this is an old function syntax"
}


clean program1 25 98 arg4
echo "clean() function exit status is: $?"

result=$(newFunc)
echo "newFunction() result is: ${result}"
