#!/bin/bash
echo "Enter file name : "
read filename

if [ -f "$filename" ]; then 
	echo "file found"
else 
	echo "file not found"
fi
