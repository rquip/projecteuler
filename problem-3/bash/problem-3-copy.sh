# problem 3: what is the largest prime factor of the number 600851475143
# second trial at solution using fermat's little theorem
#!/bin/bash

n=600851475143
m=$(echo "sqrt($n)+1" | bc)
for (( x=2; x<=m; x++ ))
do
	if (( $n%$x == 0 ))
	then
		for (( y=1; y<=20; y++))  
		do
			z=$(shuf -i 1-$x -n 1)
			if (( $(echo "(($z^$x)-$z)%$x" | bc)!=0 ))
			then
				break
			fi
			if (( $y == 20 ))
			then
				echo "$x"
			fi	
		done
	fi
done
exit 
