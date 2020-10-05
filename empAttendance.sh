#!/bin/bash -x

isPresent=1;
randomCheck=$(( RANDOM%2 ));
if [ $isPresent -eq $randomCheck ];
then
        echo "Employee is Present";
else
        echo "Employee is Absent":
fi

if [ $isPresent -eq $randomCheck ]
then
	empRatePerHr=20
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
else
	salary=0
fi

isPartTime=1
isFullTime=2
empRatePerHr=20
randomCheck=$(( RANDOM%3 ))

if [ $isPartTime -eq $randomCheck ]
then
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
elif [ $isFullTime -eq $randomCheck ]
then
	empHrs=16
	salary=$(($empHrs*$empRatePerHr))
else
	empHrs=0
fi
