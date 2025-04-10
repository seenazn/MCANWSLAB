echo "Enter the number:"
read number
smallest=${number:0:1}
for(( i=1; i<${#number}; i++ ));
do
digit=${number:i:1}
if(( digit<smallest ));
then
smallest=$digit
fi
done
echo "smallest digit:$smallest"
