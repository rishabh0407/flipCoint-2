#!/bin/bash -x

isHead=1;
isTail=0;
counter=0;
counter1=0;
declare -A singlet
for(( i=0; i<=10; i++ ))
do
  toss=$(( RANDOM % 2 ));
  if(( $toss == $isHead ));
  then
    echo "Head"
    singlet[((counter++))]="Heads"
  else 
    echo "Tails"
    singlet[((counter1++))]="Tails"
  fi
done
if(( $counter > $counter1 ));
then 
    diff=$(( $counter - $counter1 ));
    sum=$(( $counter + $counter1 ));
    percentage=$(( $(( $diff / $sum )) * 100 ));
    echo $percentage
else
     diff=$(( $counter1 - $counter ));
    sum=$(( $counter + $counter1 ));
    percentage=$(( $(( $diff / $sum )) * 100 ));
    echo $percentage
fi
