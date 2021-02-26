#!/bin/bash -x

toss=$(( RANDOM % 2 ));
isHead=1;
isTail=0;
if(( $toss == $isHead ));
then
    echo "Head"
else 
    echo "Tails"
fi
