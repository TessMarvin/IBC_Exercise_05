echo highest earner
cat wages.csv | cut -d , -f 1,2,4 | grep [mf] | tr ',' ' ' | sort -k3n | tail -n 1

echo lowest earner 
cat wages.csv | cut -d , -f 1,2,4 | grep [mf] | tr ',' ' ' | sort -k3n | head -n 1

echo number of females in top ten
cat wages.csv | cut -d , -f 1,4 | grep [mf] | tr ',' ' ' | sort -k3n | tail -n 10 | grep female | wc -l
