#!/bin/bash

echo "All variables passed :: $@"
echo "Number of variables passed :: $#"
echo "script name :: $0"
echo "Present working directory :: $PWD"
echo "User's home directory :: $HOME"
echo "Which user is running the script :: $USER"
echo "Process ID of the current script :: $$"
echo "Process ID of last command in background :: $!" 