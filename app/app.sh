#!/bin/bash

# Get global paths
SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`

# Declare arrays from json file
# Filter out data with quotation ending with a comma
# Extract string and put it in an array
terms=$(grep -i '"*",' $SCRIPTPATH/../src/terms.json | sed 's/",//g' | sed 's/"//g')
video=$(grep -i '"*",' $SCRIPTPATH/../src/video.json | sed 's/",//g' | sed 's/"//g')

# Function to combine random index of array and get that value
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

y=$(x ${terms})
z=$(x ${video})

# Put it all together
result='eps'$rs'.'$re'_'$y'.'$z

# Clear terminal
clear

# echo result variable
echo $result
