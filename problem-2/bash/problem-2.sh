# Find the sum of the even-valued fibonacci numbers below four million
a=1
b=2
sum=0
while (( $a<4000000 && $b<4000000 ))
do
	# echo "$a" -- used for debugging
	# echo "$b" -- used for debugging
	if (( $b % 2 == 0 ))
	then
		sum=$(( sum + b ))
	fi
	c=$b
	b=$(( a + b ))
	a=$c
done
echo "The answer is $sum"

		
