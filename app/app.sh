#!/bin/bash

# Declare arrays
terms=$(grep -i '"*",' terms.json | sed 's/",//g' | sed 's/"//g')
video=$(grep -i '"*",' video.json | sed 's/",//g' | sed 's/"//g')

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
