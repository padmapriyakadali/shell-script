#!/bin/bash

NUMBER1=$1

if ! [[ "$NUMBER1" =~ ^-?[0-9]+$ ]]; 
then
  echo "Error: Input is not an integer. Exiting."
  exit 1
fi

if [ $NUMBER1 -gt 100 ]

then 
    echo "Given number is greater than 100"

else
    echo "Given number is equal or less than 100"

fi