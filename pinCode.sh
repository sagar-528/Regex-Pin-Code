#!/bin/bash -x

#->Author: Sagar Gupta 
#->Date: Mar 2020 

read -p "Checking the given pin code is valid or not: " pin
echo " "

ValidatePin="^[0-9]{6}$"
FailCondition1="^([a-zA-Z]*[0-9]){6}*$"
FailCondition2="^([a-zA-Z]*[0-9]){6}[a-zA-Z]*$"
if [[ $pin =~ $ValidatePin ]]
then
	echo Valid
	elif [[ $pin =~ $FailCondition1 ]]
	then
		echo Fail
	elif [[ $pin =~ $FailCondition2 ]]
	then
		echo Fail
else
	echo Invalid
fi
