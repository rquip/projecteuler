# problem 3: what is the largest prime factor of the number 600851475143
# too slow and needs to be optimized
#!/bin/bash

n=600851475143
for (( x=2 ; x<=$n ; x++ ))
do
	if (( $n % $x == 0 ))
	then
		for (( y=2 ; y<=$x ; y++ ))
		do
			if (( $x == $y ))
			then
				echo "$x"
				break
			fi
			if (( $x % $y == 0 && $y != $x ))
			then
				break
			fi
		done
	fi
done	
