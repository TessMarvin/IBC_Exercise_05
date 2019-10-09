# usage: bash schoolwage.sh file.csv

for file in $1
do
	cat $file | cut -d , -f 3,4 | sort -n  -t, -k 1,1 > sort.txt
	var1=$(cat sort.txt | egrep "16," | sort -n -t, -k 2,2 | head -n 1 | cut -d , -f 2,2) 
	var2=$(cat sort.txt | egrep "12," | sort -n -t, -k 2,2 | head -n 1 | cut -d , -f 2,2) 
	echo "The minimum wage for earners who graduate college is more than those who went to only 12 years of schooling by this much: "
	echo "$var1 - $var2" | bc
 
done
