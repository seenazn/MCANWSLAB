sum_of_digits() {
    num=$1
    sum=0

    # Loop through each digit of the number
    while [ $num -gt 0 ]; do
        digit=$((num % 10))
        sum=$((sum + digit))
        num=$((num / 10))
    done

    echo $sum
}

# Read a number from user input
echo "Enter a number:"
read number

# Call the function and display the result
result=$(sum_of_digits $number)
echo "The sum of the digits is: $result"


#//function sum_of_digits {
#local number=$1
#local sum=0
#while (( number > 0 )); do
#sum=$(( sum + number % 10 ))
#number=$(( number / 10 ))
#done
#echo "$sum"
#}
#echo "Enter a number:"
#read number
#result=$(sum_of_digits $number)
#echo "Sum of digits of $number: $result"
