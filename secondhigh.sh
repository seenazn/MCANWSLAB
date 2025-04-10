numbers=( 5 3 8 1 9 4 7 2)
highest=${numbers[0]}
second_highest=${numbers[0]}
for number in "${numbers[@]}";
do
if (( number < highest ));
then
second_highest=$highest
highest=$number
fi
if (( number != highest )) && ((number>second_highest));
then
second_highest=$number
fi
done
echo "Second highest number:$second_highest"
