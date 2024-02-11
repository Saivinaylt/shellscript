#/bin/bash

a=0

# lt is less than operator

#Iterate the loop until a less than 10

while [ $a -lt 50 ]
do
# Print the values
echo $a
# increment the value
a=`expr $a + 2`
done