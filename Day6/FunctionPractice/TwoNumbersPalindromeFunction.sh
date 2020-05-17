#!/bin/bash -x

function reverseOfNumber() {
	local firstNumber=$1;
	local reverseNumber=0;
	local lastDigit=0;
	while [[ $firstNumber -ne 0 ]]
	do
		lastDigit=$(( $firstNumber%10 ));
		reverseNumber=$(( $reverseNumber*10+$lastDigit ));
		firstNumber=$(( $firstNumber/10 ));
	done
	echo $reverseNumber;
}

function isPalindrome() {
   local reverseNumber=$1;
	local secondNumber=$1;
	if [[ $secondNumber -eq $reverseNumber ]]
	then
		echo "Both numbers are palindrome";
	else
		echo "Both numbers are not palindrome";
	fi
}

read -p "Enter First Number:" firstNumber;
read -p "Enter Second Numbe:" secondNumber;

reversNumber=$(reverseOfNumber $firstNumber);
isPalindrome $reverseNumber $secondNumber;
