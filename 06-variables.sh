#!/bin/bash

START_TIME=$(date +%s)

echo "script executed at: $START_TIME"

sleep 10
END_TIME=$(date +%s)  

ELAPSED_TIME=$((END_TIME - START_TIME))

echo "script executed at: $END_TIME"
echo "elapsed time: $ELAPSED_TIME seconds"
