#!/bin/bash

#author: NANDI
#Date: 02/04/2024

#This script contains the output of nodehealth!
#version:2
date

set -x # debug mode
set -e # exit the script when there is an error
set -o pipefail
df -h

free -g

nproc

ps -ef | grep python | awk -F" " '{print $2}'
