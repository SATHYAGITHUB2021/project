#intializing two variable
A=$1
B=$2
#if statement
#check weather they are equal
if [ $A -eq $B ]; then
  echo A is equal to B
fi
#check weather they are not equal
if [ $A -nq $B ]; then
  echo A is not equal to B
fi
#if else statement
if [ $A -ne $B ];then
  echo A is equal to B
else
  echo A is not equal to B
fi





