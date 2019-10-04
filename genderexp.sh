#usage: bash genderexp.sh file.csv

for file in $1
do
	cat $file | cut -d , -f 1,2 | grep "female" > female.csv
	cat female.csv | sed/"1[0-9]"/"
	cat female.csv | sort -n > sortedfemale.csv
	cat $file | cut -d , -f 1,2 | grep "male" > male.csv
        cat male.csv | sort -n > sortedmale.csv
	cat sortedfemale.csv > genderexperience.csv
	cat sortedmale.csv >> genderexperience.csv
	cat genderexperience.csv | tr "," " " > genderexperience.csv 
done
