#!/bin/bash
# prime.bash
# 입력 : 정수 2개(a, b)
# 출력 : 입력받은 정수 사이의 소수들의 합(a, b 포함)

declare -i a
declare -i b
declare -i sum
declare -i cnt
declare -i i
declare -i j
sum=0
cnt=0

echo -e "Enter Number : \c"
read a b

for(( i=a; i<=b; i++ ))
do
	for(( j=1; j<i; j++ ))
	do
		if (( i%j==0 ))
		then
			cnt=cnt+1
		fi
	done
	if (( cnt==1 ))
	then
		sum=sum+i
	fi
	cnt=0
done

echo -e "total = \c"
echo $sum
