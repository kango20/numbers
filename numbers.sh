#!/bin/bash
#numbers.sh
#Karen Ngo

echo -n "Enter a positive number: "

read NUMBERS
while echo "$NUMBERS" | egrep -v "^[0-9]+" >/dev/null 2>&1
do
	echo "You must enter a positive number"
	echo "Enter a number: "
	read NUMBERS
done

N=1
while [ $N -le "$NUMBERS" ]
do 
	if [ $((N%2)) -eq 0 ]
	then
		echo $N "EVEN"
	fi
	if [ $((N%2)) -ne 0 ]
	then
		echo $N "ODD"
	fi
	N=$((N+1))
done
echo "Thank you"
