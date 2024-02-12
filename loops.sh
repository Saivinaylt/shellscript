#/bin/bash



# lt is less than operator

#Iterate the loop until a less than 10
# a=0

# while [ $a -lt 20 ]
# do 
# echo $a

# a=`expr $a + 1`

# done

# for 
for i in 1 2 3 4 5 6 7 8 9 10
do
if [ $i -eq 5 ]
then
break
fi
echo "print th iteration: $i"
done


for a in 1 2 3 4 5 6 7 8 9 10
do

# if a = 5 then continue the loop and
# don’t move to line 8

if [ $a -eq 5 ]
then
continue
fi
echo “Iteration no $a”
done

u=0

# -gt is greater than operator
#Iterate the loop until a is greater than 10

until [ $u -lt 10 ]
do
# Print the values
echo "printing ${u}"

# increment the value
a=`expr $u + 1`
done


