numbers=( 5 3 8 1 9 4 7 2)
smallest=${numbers[0]}
largest=${numbers[0]}
for number in "${numbers[@]}";
do
if (( number < smallest ));
then
smallest=$number
fi
if (( number > largest ));
then
largest=$number
fi
done
echo "Smallest number:$smallest"
echo "Largest number:$largest"
