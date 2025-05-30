# Find the largest palindrome made from the product of two 3-digit numbers
# Works! Some places for improvement
# 1. Stop checking multiple products that are the same
# 2. Is there a way to terminate the inner loop early?
# 3. Start from the largest number and go in reverse
# 4. Way to minimize overhead of rev command

#!/bin/bash

s=0
for (( x=900 ; x<=999 ; x++))
do
	for (( y=$x ; y<=999 ; y++ ))
	do
		z=$((x*y))
		if [[ $z == $(echo "$z" | rev) ]]
		then
			if (( z > s ))
			then
				s=$z
			fi
		fi
	done
done
echo "solution is $s"
