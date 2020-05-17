#!/bin/bash -x

firstNumber=1;
lastNumber=100;
read -p "Think the number between 1 to 100:" number;
middle=$(( ($firstNumber+$lastNumber)/2 ));

while [[ $firstNumber -le $lastNumber ]]
do
	if [[ $middle -eq $number ]]
	then
		echo "Your magic Number is:" $middle;
		break;
	elif [[ $number -lt $middle ]]
	then
		lastNumber=$middle;
		middle=$(( ($firstNumber+$lastNumber)/2 ));
	else
		firstNumber=$middle;
		middle=$(( ($firstNumber+$lastNumber)/2 ));
	fi
done

