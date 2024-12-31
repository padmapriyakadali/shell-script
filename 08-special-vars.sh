#!/bin/bash

echo "All variables passed :: $@"
echo "Number of variables passed :: $#"
echo "script name :: $0"
echo "Present working directory :: $PWD"
echo "User's home directory :: $HOME"
echo "Which user is running the script :: $USER  "
sleep 5 
echo "Process ID of the current script :: $$"
sleep 10 &
echo "Process ID of last command in background :: $!" 