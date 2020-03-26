#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

read -p "Checking the given pin code is valid or not: " pin
echo " "

ValidatePin="^[0-9]{6}$"

if [[ $pin =~ $ValidatePin ]]
then
	echo valid
else
	echo invalid
fi
