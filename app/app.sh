#!/bin/bash

# Declare arrays
declare -a hackNames=('encode' 'syntax' 'sql-inject' 'parse-error' 'kernel-panic')
declare -a fileTypes=('doc' 'xls' 'sql' 'bmp' '7z' 'deb' 'dat' 'sql' 'coffee' 'py')
declare -a videoTypes=('mkv' 'avi' 'mov' 'avi' 'flv' 'm4v')

numOfHackNames=${#hackNames[@]}
numOfFileTypes=${#fileTypes[@]}
numOfVideoTypes=${#videoTypes[@]}

randomHackNameIndex=$(($RANDOM % $numOfHackNames))
randomFileTypeIndex=$(($RANDOM % $numOfFileTypes))
randomVideoTypeIndex=$(($RANDOM % $numOfVideoTypes))

rs=$((1 + RANDOM % 2))
re=$((RANDOM % 12))
rhn=${hackNames[$randomHackNameIndex]}
rfti=${fileTypes[$randomFileTypeIndex]}
rvti=${videoTypes[$randomVideoTypeIndex]}

echo 'eps'$rs'.'$re'_'$ri$rhn'.'$rfti