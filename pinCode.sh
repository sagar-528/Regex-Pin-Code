#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

read -p "Checking the given pin code is valid or not: " pin
echo " "

#Validate condition for 6 digit and space between pin code.
ValidatePin="^([0-9]*\s*[0-9]){6}$"

#Fail condition for pin code.
FailCondition="^([a-zA-Z]*[0-9]){6}[a-zA-Z]*$"
if [[ $pin =~ $ValidatePin ]]
then
	echo Valid
	elif [[ $pin =~ $FailCondition ]]
	then
		echo Fail
else
	echo Invalid
fi
