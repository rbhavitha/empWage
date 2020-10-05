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
empCheck=$(( RANDOM%3 ))

if [ $isPartTime -eq $empCheck ]
then
	empHrs=8
	salary=$(($empHrs*$empRatePerHr))
elif [ $isFullTime -eq $empCheck ]
then
	empHrs=16
	salary=$(($empHrs*$empRatePerHr))
else
	empHrs=0
fi

totalSalary=0;
numWorkingDays=20;
for (( day=1; day<=$numWorkingDays; day++ ))
do
	case $empCheck in
		$isFullTime)empHrs=8 ;;
		$isPartTime)empHrs=4 ;;
		*)
		empHrs=0 ;;
	esac
	salary=$(($empHrs*$empRatePerHr))
	totalSalary=$(( $totalSalary+$salary ))
done


maxHrsInMonth=100
totalEmpHrs=0
totalWorkingDays=0
while [[ $totalEmpHrs -lt $maxHrsInMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
        totalWorkingDays=$(($totalWorkingDays+1))
        case $empCheck in
                $isPartTime)
                        empHrs=4
                        ;;
                $isFullTime)
                        empHrs=8
   			;;
                *)
                        empHrs=0
                        ;;
        esac
        totalEmpHrs=$(($totalEmpHrs+$empHrs))
        totalSalary=$(($totalSalary+($totalEmpHrs*$empRatePerHr)))
done


