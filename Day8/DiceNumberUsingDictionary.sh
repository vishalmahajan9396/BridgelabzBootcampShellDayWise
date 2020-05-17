#!/bin/bash -x

firstDiceCount=0;
secondDiceCount=0;
thirdDiceCount=0;
fourthDiceCount=0;
fifthDiceCount=0;
sixthDiceCount=0;

   while [ $firstDiceCount -lt 10 -a $secondDiceCount -lt 10 -a $thirdDiceCount -lt 10 -a $fourthDiceCount -lt 10 -a $fifthDiceCount -lt 10 -a $sixthDiceCount -lt 10 ]
   do
	diceNumber=$(( (RANDOM % 6 ) + 1 ));
   declare -A diceDictionary;

	if [ $diceNumber -eq 1 ]
	then
		(( firstDiceCount++ ));
		diceDictionary[1]="$firstDiceCount";
	elif [ $diceNumber -eq 2 ]
	then
		(( secondDiceCount++ ));
		diceDictionary[2]="$secondDiceCount";
	elif [ $diceNumber -eq 3 ]
	then
		(( thirdDiceCount++ ));
		diceDictionary[3]="$thirdDiceCount";
	elif [ $diceNumber -eq 4 ]
	then
		(( fourthDiceCount++ ));
		diceDictionary[4]="$fourthDiceCount";
	elif [ $diceNumber -eq 5 ]
	then
		(( fifthDiceCount++ ));
		diceDictionary[5]="$fifthDiceCount";
	else
		(( sixthDiceCount++ ));
		diceDictionary[6]="$sixthDiceCount";
	fi
   done

minDiceNumber=11;
key=0;
for (( index=1; index<=${#diceDictionary[@]}; index++ ))
do
   if [ ${diceDictionary[$index]} -eq 10 ]
   then
      echo "Maximum Dice number $index appears for 10 times";
   fi

   if [ ${diceDictionary[$index]} -lt $minDiceNumber ]
   then
	minDiceNumber=${diceDictionary[$index]};
	key=$index;
   fi
done
  echo "Minimum Dice number $key  appears for $minDiceNumber times";

echo "${diceDictionary[@]}";
echo "${!diceDictionary[@]}";
