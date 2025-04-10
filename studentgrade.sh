INPUTFILE="grades.txt"
if [[ ! -f "$INPUTFILE" ]];
then
echo "Input file not found!"
exit 1
fi
declare -A grades
while read line;
do
name=$(echo "$line" | cut -d ',' -f 1)
grade=$(echo "$line" | cut -d ',' -f 2)
grades["$name"]=$grade
done < "$INPUTFILE"
for name in "${!grades[@]}";
do
echo "$name:${grades[$name]}"
done
