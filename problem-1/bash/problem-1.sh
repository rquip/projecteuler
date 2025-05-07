# Problem 1
# Find the sum of all the multiples of 3 or 5 below 1000.

#!/bin/bash

sum=0
for a in {3..999..1}
do
	if (( a % 5 == 0 || a % 3 == 0 ))
	then
		# echo "$a" -- used to debug
		sum=$((sum + a))
	fi
done
echo "The answer is $sum"
