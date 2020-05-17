#!/bin/bash -x

echo "Enter Three Number"
read firstNumber;
read secondNumber;
read thirdNumber;

operationFirst=$(($firstNumber+$secondNumber*$thirdNumber));
operationSecond=$(($firstNumber%$secondNumber+$thirdNumber));
operationThird=$(($thirdNumber+$firstNumber/$secondNumber));
operationFourth=$(($firstNumber*$secondNumber+$thirdNumber));

if [ $operationFirst -gt $operationSecond -a $operationFirst -gt $operationThird -a $operationFirst -gt $operationFourth ]
then
	echo "Maximum number is $operationFirst";
elif [ $operationSecond -gt $operationFirst -a $operationSecond -gt $operationThird -a $operationSecond -gt $operationFourth ]
then
   echo "Maximum number is $operationSecond";
elif [ $operationThird -gt $operationFirst -a $operationThird -gt $operationSecond -a $operationThird -gt $operationFourth ]
then
   echo "Maximum number is $operationThird";
else
   echo "Maximum number is $operationFourth";
fi

if [ $operationFirst -lt $operationSecond -a $operationFirst -lt $operationThird -a $operationFirst -lt $operationFourth ]
then
	echo "Minimum number is $operationFirst";
elif [ $operationSecond -lt $operationFirst -a $operationSecond -lt $operationThird -a $operationSecond -lt $operationFourth ]
then
   echo "Minimum number is $operationSecond";
elif [ $operationThird -lt $operationFirst -a $operationThird -lt $operationSecond -a $operationThird -lt $operationFourth ]
then
   echo "Minimum number is $operationThird";
else
   echo "Minimum number is $operationFourth";
fi

