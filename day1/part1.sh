awk '{for(i=1;i<=NF;i++)a[NR]+=$i}END{for(i in a){print a[i]}}' RS='' FS='\n' | sort -nr | head -n1
