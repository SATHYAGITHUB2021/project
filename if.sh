#intializing two variable
A=$1
B=$2
FILE=$3
#if statement
#check weather they are equal
if [ $A -eq $B ]; then
  echo A is equal to B
fi
#check weather they are not equal
if [ $A -ne $B ]; then
  echo A is not equal to B
fi
#if else statement
if [ $A -eq $B ];then
  echo A is equal to B
else
  echo A is not equal to B
fi
if [ -n $A ]; then
  echo A has length more than 0
fi

if [ -f $FILE ]; then
  echo file exist
else
  echo "$FILE does not exist"
fi

read -p 'type user name:' name
if [ "$name" == "root" ]
then
  echo $name is admin user.
else
  echo $name is a normal user.
fi






