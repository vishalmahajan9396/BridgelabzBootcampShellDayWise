#!/bin/bash -x

money=100
target=200

read -p "How many time your play : " play;

while [ $play != 0 ]
do
	randomCheck=$(( RANDOM%10 ))
	if [ $randomCheck -ge 5 ]
	then
   	echo "you win Re 1 ";
    	((money++));

		if [ $money -eq $target ]
    	then
      	echo "Your target is complited";
			$play=0;
    	fi
	else
   	echo "you loss Re 1";
    	((money--));
		 if [ $money -eq 0 ]
     	 then
     	 	echo "Sorry your balance is : '0'";
         $play=0;
  		 fi
	fi
	((play--))
done

echo "your money is : $money"
