#!/bin/bash

NUMBER=$1

# -gt-> greater than
# -lt-> less than
# -eq-> equal to
# -ne-> not equal to
if [ $NUMBER -gt 20 ]; then
    echo " Given number is greater than 20"
elif [ $NUMBER -eq 20 ]; then
    echo " Given number is equal to 20"
else 
    echo " Given number is less than or equal to 20"
fi
  