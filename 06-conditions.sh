#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]
then
    echo "$NUMBER  greater than 20"
    exit 0
else
   echo "$NUMBER is less than 20"
fi 