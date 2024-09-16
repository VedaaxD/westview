#!/bin/bash
read -p "Enter name of directory:" directory
if [ -f $dir ]
then
	echo "Directory $dir exists"
else
	echo "Directory $dir doesn't exists"
fi
