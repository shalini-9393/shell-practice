#!/bin/bash

#### special variables ####

echo "All arguments passed to the script: $@"
echo "Number of arguments passed to the script: $#"
echo "script name: $0"
echo "present working directory: $PWD"
echo "home directory: $HOME"
echo "current user: $USER" 
echo "PID of the current script: $$"
sleep 100 &
echo "PID of the last background process: $!"
echo "All arguments passed to the script: $*"
