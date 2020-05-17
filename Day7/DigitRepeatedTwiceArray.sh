#!/bin/bash -x
counter=0;
index=0;
while [[ counter -le 100 ]]
do
	(( counter++ ));
	unitPlace=$(( $counter%10 ));
	tenPlace=$(( $counter/10 ));
	if [[ $unitPlace -eq $tenPlace ]]
	then
		twiceDigitArray[index]=$counter;
		(( index++ ));
	fi
done
echo "Digits that are repeated twice:" ${twiceDigitArray[@]};
