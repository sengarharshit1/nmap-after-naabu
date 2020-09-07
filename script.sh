#!/bin/bash

echo "
███╗   ██╗ █████╗  █████╗ ██████╗ ██╗   ██╗   ████████╗ ██████╗       ███╗   ██╗███╗   ███╗ █████╗ ██████╗ 
████╗  ██║██╔══██╗██╔══██╗██╔══██╗██║   ██║   ╚══██╔══╝██╔═══██╗      ████╗  ██║████╗ ████║██╔══██╗██╔══██╗
██╔██╗ ██║███████║███████║██████╔╝██║   ██║█████╗██║   ██║   ██║█████╗██╔██╗ ██║██╔████╔██║███████║██████╔╝
██║╚██╗██║██╔══██║██╔══██║██╔══██╗██║   ██║╚════╝██║   ██║   ██║╚════╝██║╚██╗██║██║╚██╔╝██║██╔══██║██╔═══╝ 
██║ ╚████║██║  ██║██║  ██║██████╔╝╚██████╔╝      ██║   ╚██████╔╝      ██║ ╚████║██║ ╚═╝ ██║██║  ██║██║     
╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝       ╚═╝    ╚═════╝       ╚═╝  ╚═══╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝     
                                                                                                           
                                                Creator : @sengarharshit1
                                          https://www.twitter.com/sengarharshit1
                                        https://www.linkedin.com/in/sengarharshit1
"

naabu -ports full -hL $1 -o naabu_scan.txt || naabu -ports full -host $1 -o naabu_scan.txt
cat naabu_scan.txt | cut -d ':' -f2 | sort -u > ports.txt
for i in `cat naabu_scan.txt | cut -d ':' -f1 |uniq`; do nmap -sS -Pn -sV -T3 -p $(sed ':a;N;$!ba;s/\n/,/g' ports.txt) $i -oN $i.txt;done
rm ports.txt
