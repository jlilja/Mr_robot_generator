#!/bin/bash

# Declare arrays
declare -a terms=('encode' 'syntax' 'sql-inject' 'parse-error' 'kernel-panic')
declare -a video=('mkv' 'avi' 'mov' 'avi' 'flv' 'm4v' 'mp4' 'mpeg' 'wmv' 'qt')

x()
{
  # Assign argument to variable in order to access more than first item.
  array=($@)
  randIndex=$(($RANDOM % $#))
  randItem=${array[$randIndex]}

  echo $randItem
}

# Get random seson and episode
rs=$((1 + RANDOM % 2))
re=$((RANDOM % 12))

# Put it all together
result='eps'$rs'.'$re'_'$(x ${terms[@]})'.'$(x ${video})

# echo result variable
echo $result
