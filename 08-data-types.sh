#!/bin/bash

NUM1=100
NUM2=shalini

SUM=$(($NUM1+$NUM2))

echo "Sum is: $SUM"

#Array
FRUITS=("apple" "orange" "mango")
echo fruits are: ${FRUITS[@]}