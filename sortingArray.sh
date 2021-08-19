read -p "Enter length of array " len
count=0
for (( i=0; i<$len; i++ ))
do
	arr[((count++))]=$((RANDOM%100))
done

echo "Unsorted array: " ${arr[@]}
echo "Sorting arry.."

for (( i=0; i<$len; i++ ))
do
	for (( j=$(($i+1)); j<$len; j++ ))
	do
		if [ ${arr[i]} -gt ${arr[j]} ]
		then
			temp=${arr[i]}
			arr[i]=${arr[j]}
			arr[j]=$temp
		fi
	done
done

echo "Sorted array: "${arr[@]}
