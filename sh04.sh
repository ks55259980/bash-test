#!/bin/bash
#Program:
#	User inputs 2 integer number: progam will cross these two numbers.
#History
#2018/10/21 cpt first release
echo -e "You should input 2 numbers, I will cross them! \n"
read -p "first number: " firstNumber
read -p "second number: " secondNumber
total=$(($firstNumber * $secondNumber))
echo -e "\nThe result of $firstNumber x $secondNumber is ==> $total"

