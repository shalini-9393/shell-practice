#!/bin/bash

NUMBER=$1

# -gt-> greater than
# -lt-> less than
# -eq-> equal to
# -ne-> not equal to
if [ $NUMBER -gt 20 ]; then
    echo "number is greater than 20"
else 
    echo "number is less than or equal to 20"
fi
