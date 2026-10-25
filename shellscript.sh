#!/bin/bash

# in shell mainly use 6 
# 1 variables
# 2 data types (in shell its treated as a string if want to declear the datatypes user "declercommon")
# 3 conditions
# 4 loops
# 5 funtions
# 6 error handling 

# task  1 install packege using all 

### Special variables ####

echo "All args passed to the script: $@"
echo "All args passed to the script as word: $*"
echo "Number of args passed to the script: $#"
echo "First variable passed: $1"
echo "Script name: $0"
echo "Realpath: $(realpath $0)"
echo "Who is running current script: $USER"
echo "Directory of the current script: $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep 10 &
echo "PID of the command running in background now: $!"
wait $! # script waits until $! command complete
echo "Line number: $LINENO"
echo "previous command exit status: $?"
echo "Total time executed for this script: $SECONDS" 

#env variables
echo "$COURSE"
echo "$DURATION"
echo "$TRAINER"


