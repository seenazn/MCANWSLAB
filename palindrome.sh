palind()
{
echo "Enter a string"
read str
palindrome=$(echo "$str" | rev )
if [ $palindrome = $str ]
then
echo "$str is palindrome."
else
echo "$str is not a palindrome"
fi
}
palind
