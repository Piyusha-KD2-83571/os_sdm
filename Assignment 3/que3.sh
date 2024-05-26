#!/bin/bash

echo "Enter the path of file : " 
read name


if [ -f $name ]
then
	echo "$name is file"
	echo "Size of the file is: $(stat -c%s "$name") bytes"
elif [ -d "$name" ]
then
	echo "$name is a directory"
	echo "Contents of the directory are: "
	ls "$name"
else
	echo "$name doesn't exists"
fi
