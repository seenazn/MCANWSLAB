evenodd()
{
echo "Enter a num"
read n
if [ $((n %2)) -eq 0 ]
then
echo "even"
else
echo "odd"
fi
}
evenodd


