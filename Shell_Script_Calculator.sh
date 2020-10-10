echo $'Which function would you like to use:\nEnter 1 for Addition\nEnter 2 for Subtraction\nEnter 3 for Multiplication\nEnter 4 for Division'
read menuChoice

case $menuChoice in
  1) 
    echo 'How many numbers would you like to perform the addition on?'
    read totalNum
    result=0
    for (( i=1; i<=$totalNum; i++ ))
    do
    	echo -n "Enter number $i: "
    	read num
    	result=$(echo "$result + $num" | bc )
    done
    ;;
  2)
    echo 'How many numbers would you like to perform the subtraction on?'
    read totalNum
    for (( i=1; i<=$totalNum; i++ ))
    do
    	echo -n "Enter number $i: "
    	read num
	if [ $i -eq 1 ]
	then
		result=$num
	else
    		result=$(echo "$result - $num" | bc )
	fi
    done
    ;;
  3)
    echo 'How many numbers would you like to perform the multiplication on?'
    read totalNum
    for (( i=1; i<=$totalNum; i++ ))
    do
    	echo -n "Enter number $i: "
    	read num
	if [ $i -eq 1 ]
	then
		result=$num
	else
    		result=$(echo "$result * $num" | bc )
	fi
    done
    ;;
  4)
    echo 'Please enter the dividend: '
    read dividend
    echo 'Please enter the divisor: '
    read divisor
    result=$(echo "scale=2; $dividend/$divisor" | bc )
    ;;
  *)
    echo 'You have entered an invalid input, the program will exit now.' 
    exit 1
    ;;
esac
echo "The result is $result."

	

