#!/bin/bash

# Force bash regardless of if  we are running this via sh or ./
if [ -z "$BASH_VERSION" ]
then
    exec bash "$0" "$@"
fi

shopt -s nullglob

# Get a list of files only not directories
array=(*.*)

echo The array contains "${array[*]}"
echo The last element in the array is  "${array[*]: -1}"
# Protect against if this is run from sh or ./ by using basename
echo The file name this script is running in is "$(basename $0)"

if [ "$(basename $0)" != "${array[*]: -1}" ]
then
	echo "Danger! Danger, Will Robinson!!"
	exit 1
else
	echo  "Homestar Runner dot net....... It's a dot com!"
fi

# Rest of script here

unset array
shopt -u nullglob
