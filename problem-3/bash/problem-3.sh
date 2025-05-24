# Step 1: Factorization works but is too slow for the test case
# Edit 1: To speed up, used $(( )) instead of bc - which works!
# Edit 2: The more times you run bc, the slower the program is
# Step 2: Fermat's little theorem for primarlity
# Edit 1: $(( )) can't handle as large of numbers as bc
# Edit 2: 

#!/bin/bash

n=13195 #test case
t=$(echo "scale=0; sqrt($n)" | bc)
for (( p=3 ; p<=t ; p+=1 ))
do
	if (( $(($n % $p))==0 )) #tests if we have a factor of n
	then
		state=1
		for (( x=1 ; x<=10 ; x++)) #use 10 random numbers and do fermat's primarlity test
		do
			a=$(shuf -i 2-$(($p-1)) -n 1)
			if (( $(echo "(($a^($p-1))%$p) != 1" | bc) ))
			then
				state=0
				break
			fi
		done
		if (( $state == 1 ))
		then
			echo "$p"
		fi
	fi
done

