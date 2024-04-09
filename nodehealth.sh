#!/bin/bash

#author: NANDI
#Date: 02/04/2024

#This script contains the output of nodehealth!
#version:1

set -e # exit the script when there is an error
date

echo "print the disk space "
df -h

echo "print the memory"
free -g

echo "print the cpu usage"
nproc

echo "printing processes"
ps -ef

echo "printing a specific processes are running with column for this case we want to see only python related process and 2nd column of it"
ps -ef | grep python | awk -F" " '{print $2}'
