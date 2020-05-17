#!/bin/bash -x
read -p "Enter number:" number;

function isPrime() {
	local count=0;
	for(( i=1; i<=$number; i++ ))
	do
		n=$(($number%$i));
		if [ $n -eq 0 ];
		then
			count=$(($count+1));
		fi
	done
	if [ $count -eq 2 ];
	then
		echo "1";
	else
		echo "0";
	fi
}

function isPalindrome() {
	local rev=0;
	while [ $number -eq 0 ];
	do
		rev=$(( $rev*10+$number%10 ));
		number=$(($number/10));
		if [ $rev -eq $number ];
		then
			echo "1";
		else
			echo "0";
		fi
	done
}

prime=$(isPrime $number);
if [ $prime -eq 1 ]
then
	palindrome=$(isPalindrome $number);
	if [ $palindrme -eq 1 ]
	then
		echo "$number is prime number and also palindrome";
	else
		echo "$number is prime number but not palindrome";
	fi
else
	echo "$number is not a prime number";
fi
