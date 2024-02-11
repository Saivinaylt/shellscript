#/bin/bash



# lt is less than operator

#Iterate the loop until a less than 10
a=0

while [ $a -lt 20 ]
do 
echo $a

a=`expr $a + 1`

done

# for 
for i in 1 2 3 4 5 6 7 8 9 10
do


if [ $i == 5 ]
then
break
fi

echo "print th iteration: $i"
done


