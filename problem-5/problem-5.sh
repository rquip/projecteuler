# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
# State: Right now, I think this works, but it won't produce the solution. 
#!/bin/bash

t=20
u=1
for ((;;))
do
	for (( s=11; s<=20; s++ ))
	do
		if (( $((t%s)) != 0 ))
		then
			u=0
			break
		fi
	done
	if (( u == 1 ))
	then
		echo "solution is $t"
		break
	fi
	if (( u == 0 ))
	then 
		u=1
	fi
	(( t += 20 ))
done
