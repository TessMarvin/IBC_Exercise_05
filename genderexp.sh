#usage: bash genderexp.sh file.csv

for file in $1
do
	cat $file | cut -d , -f 1,2 | grep "female" > female.csv
	cat female.csv |cut -d , -f 2 | sort -n | uniq | sed 's/^/female /g' > sortedfemale.txt
	cat $file | cut -d , -f 1,2 | grep "male" > male.csv
        cat male.csv | cut -d , -f 2| sort -n |uniq | sed 's/^/male /g' > sortedmale.txt
	cat sortedfemale.txt > genderexperience.txt
	cat sortedmale.txt >> genderexperience.txt
	#cat genderexperience.csv | tr "," " " > genderexperience.txt 
done
