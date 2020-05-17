#!/bin/bash -x
for (( i=0;i<10;i++ ))
do
	randomNumber[$i]=$((RANDOM%900 + 100));
done

echo ${randomNumber[@]};
randomNumberLength=${#randomNumber[@]};

for (( i=0;i<$randomNumberLength;i++ ))
do
   for (( j=i+1;j<$randomNumberLength;j++ ))
   do
      if [ ${randomNumber[i]} -gt ${randomNumber[j]} ];
      then
         temp=${randomNumber[i]};
         randomNumber[$i]=${randomNumber[j]};
         randomNumber[$j]=$temp;
      fi
   done
done

echo "Array element after sorting are:" ${randomNumber[@]};
echo "Second largest element is:" ${randomNumber[$(($randomNumberLength-2))]};
echo "Second smallest element is:" ${randomNumber[1]};
