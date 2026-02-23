#!/bin/bash

set -e #ERR

trap echo "there is an error line number $LINENO command: $BASH_COMMAND" ERR
echo "Hello World"
echo "Iam learning shell-script"
echo "printing error here"
echo "no error in this"