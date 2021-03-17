#!/bin/bash
# day.bash
# 입력 : 2021년 하루의 월(month)와 일(day)
# 출력 : 해당일의 요일
# 정보 : 2021.12.31 목요일

declare -i month
declare -i day
declare -i tot
declare -i i
months=(31 28 31 30 31 30 31 31 30 31 30 31)
days=(일 월 화 수 목 금 토)
tot=0

echo -e "월(month)와 일(day) 입력 : \c"
read month day

for(( i=0; i<month-1; i++ ))
do
	tot=tot+${months[i]}
done

tot=tot+day
tot=tot%7+4
tot=tot%7

echo -e "$month/$day 은 ${days[$tot]}요일입니다.\n"
