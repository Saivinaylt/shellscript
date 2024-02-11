#/bin/bash



# lt is less than operator

#Iterate the loop until a less than 10
a=0

while [ $a -lt 20 ]
do 
echo $a

a=`expr $a + 1`

done



echo done

# a=0

# # lt is less than operator

# #Iterate the loop until a less than 10

# while [ $a -lt 10 ]
# do
# # Print the values
# echo $a
# # increment the value
# a=`expr $a + 1`
# done