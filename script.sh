naabu -ports full -hL $1 -o naabu_scan.txt
cat scan.txt | cut -d ':' -f2 | sort -u > ports.txt
for i in `cat scan.txt | cut -d ':' -f1 |uniq`; do nmap -sS -Pn -sV -T3 -p $(sed ':a;N;$!ba;s/\n/,/g' ports.txt) $i -oN $i.txt;done
rm ports.txt