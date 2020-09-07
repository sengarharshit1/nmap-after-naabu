# Naabu to Nmap

It is an automated script which run naabu first and then nmap on open ports.

This script automatically scan all the IPs available in IP List with "naabu" to find open ports then It filters the open ports. It runs the NMAP on IPs with Open Ports to find running services and versions.

You will get naabuscan.txt. "IP".txt files after running this script



Requirement : 

- naabu (https://github.com/projectdiscovery/naabu)

- nmap

## Usage:

git clone https://github.com/sengarharshit1/nmap-after-naabu.git

cd nmap-after-naabu

chmod +x script.sh

./script.sh ip_list.txt

./script.sh ip_range (e.g., ./script.sh 192.168.1.1/24)

./script.sh single_ip (e.g., ./script.sh 192.168.43.68)



## Social Accounts:

Twitter: https://www.twitter.com/sengarharshit1

LinkedIn: https://www.linkedin.com/in/sengarharshit1
