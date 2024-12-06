#! /bin/bash

clear
echo -e "\e[1;34m  ___      _       _\e[0            \e[1;37m.--.\e[0m"
echo -e "\e[1;34m / _ \ ___(_)_ __ | |_\e[0m       \e[1;37m|\e[0m\e[1;32mo_o\e[0m \e[1;37m|\e[0m"
echo -e "\e[1;34m| | | / __| | '_ \| __|\e[0m      \e[1;37m|\e[0m\e[1;33m:_/\e[0m \e[1;37m| \e[0m"
echo -e "\e[1;34m| |_| \__ \ | | | | |_\e[0m      \e[1;37m//   \ \ \e[0m"
echo -e "\e[1;34m \___/|___/_|_| |_|\__|\e[0m    \e[1;37m(|     | )\e[0m"    
echo -e "                          \e[1;33m/^\_   _/^\ \e[0m"
echo -e "         \e[1;31mBy: MRX-HACKS\e[0m\e[1;33m    \___)=(___/ \e[0m"
echo ""
while :
do
echo -e "\e[1;37m[\e[0m\e[1;31m1\e[0m\e[1;37m]. Get IP information from a page\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m2\e[0m\e[1;37m]. Make osint on a page\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m3\e[0m\e[1;37m]. Bin generator\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m4\e[0m\e[1;37m]. See the services that are running\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m5\e[0m\e[1;37m]. See info for a phone number\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m6\e[0m\e[1;37m]. Read file.txt from the IP-OSINT directory"
echo -e "\e[1;37m[\e[0m\e[1;31m7\e[0m\e[1;37m]. Show the remote version of the SSH server\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m8\e[0m\e[1;37m]. Know the IP of a page\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m9\e[0m\e[1;37m]. Scan 24 ports from one IP\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m10\e[0m\e[1;37m]. Scan for IP vulnerabilities\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m11\e[0m\e[1;37m]. Show system data\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m12\e[0m\e[1;37m]. Phishing wifi\e[0m"
echo -e "\e[1;37m[\e[0m\e[1;31m99\e[0m\e[1;37m]. Exit\e[0m"
echo ""
echo -e "\e[1;36mFacebook:\e[0m \e[1;37mhttps://www.facebook.com/jimber.cevallos\e[0m"
echo ""
echo -e -n "\e[1;37m☆ I \e[0m\e[1;31mP \e[0m\e[1;33m- \e[0m\e[1;37mO \e[0m\e[1;31mP \e[0m\e[1;37mS \e[0m\e[1;31mI \e[0m\e[1;37mN >> \e[0m"
read option
case $option in
1)
echo ""
#! /bin/bash
setterm -foreground green
echo -e -n "\e[1;32m[+]Enter the IP of a page: >\e[0m \e[1;37m\e[0m"
read a
echo ""
setterm -foreground green
echo "[+]Looking for data from the IP .."
sleep 3
echo ""
echo "---------Information----------"
sleep 1
setterm -foreground yellow
whois $a
echo ""
bash main.sh
exit
;;
2)
echo ""
#! /bin/bash
setterm -foreground green
echo -e "\e[1;32m[+]Enter from domain of the page:\e[0m"
echo -n -e "\e[1;32m[Ex:facebook.com] >>\e[0m \e[1;37m\e[0m"
read b
echo ""
setterm -foreground green
echo "[+]Doing osint on a page ($b) ..."
sleep 3
echo ""
echo "---------OSINT----------"
sleep 1
setterm -foreground yellow
whois $b
echo ""
bash main.sh
exit
;;
3)
cd /data/data/com.termux/files/home/IP-OSINT/BIN
bash iniciar.sh
echo ""
cd /data/data/com.termux/files/home/IP-OSINT
bash main.sh
exit
;;
4)
echo ""
#! /bin/bash
echo -n -e "\e[1;32m[+]Enter the IP of a domain: >\e[0m \e[1;37m\e[0m"
read c
echo ""
echo -e "\e[1;32m[+]Scanning possible open services ($c)..\e[0m"
sleep 2
echo ""
echo "==============================================================="
nmap -sV -sC $c
echo ""
bash main.sh
exit
;;
5)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
echo ""
#! /bin/bash
python phone.py
exit
;;
6)
echo ""
ls
echo ""
while :
do
echo -e -n "\e[1;37m[~]Do you want to continue? [\e[0m\e[1;33myes\e[0m\e[1;37m]\e[0m \e[1;37msalir\e[0m \e[1;37m[\e[0m\e[1;33mno\e[0m\e[1;37m] > \e[0m"
read continued
case $continued in
yes)
#! /bin/bash
echo ""
echo -e "\e[1;32m[+]Write the file without the archive:\e[0m \e[1;31m.txt\e[0m"
echo -n -e "\e[1;32mArchive: >>\e[0m \e[1;37m\e[0m"
read a
cat $a.txt
echo ""
bash main.sh
exit
;;
no)
#! /bin/bash
exit
;;
esac
done
;;
7)
#! /bin/bash
echo ""
setterm -foreground red
echo "
 2222222   2222222    H     H
22        22          H     H
22        22          H     H
  22222     22222     HdddddH
      22        22    H     H
      22        22    H     H
2222222   2222222     H     H
"
echo ""
setterm -foreground green
echo "[+]Enter an IP that has an open port 22:"
echo -n -e "[IP] >> \e[1;37m\e[0m"
read a
echo ""
echo -e "\e[1;36mSERVER SSH VERSION:\e[0m"
exec 3</dev/tcp/$a/22
timeout 1 cat <&3
echo ""
bash main.sh
exit
;;
8)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python ip.py
exit
;;
9)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python port1.py
exit
;;
10)
#! /bin/bash
echo ""
setterm -foreground cyan
figlet -f small NmapV
setterm -foreground green
sleep 1
setterm -foreground red
echo "                    v.1.9"
echo ""
setterm -foreground green
echo "SCRIPT FOR FINDING VULNERABILITIES IN THE OBJECTIVE PAGE:"
sleep 1
echo ""
echo -e -n "\e[1;34m[+]Write the IP Objective: >>\e[0m \e[1;32m\e[0m"
read url
echo ""
setterm -foreground cyan
echo "-----------------------------------------------"
echo "└─> nmap -sV -sC --script vuln $url"
echo "-----------------------------------------------"
echo ""
while :
do
setterm -foreground green
echo "[1]Save the vulnerabilities in an archive txt:"
echo "[2]No guard"
echo -n "[~]Option >> "
read option
case $option in
1)
echo ""
#! /bin/bash
echo -e -n "\e[1;31m[~]Name of the archive txt ex:(scan)>> \e[0m"
read archive
echo ""
echo -e "\e[1;37m[#]Saving vulnerabilities, wait a moment...\e[0m"

#This function causes nmap -sV -sC --script vuln $url to search for the IP vulnerability
setterm -foreground green
sleep 1
echo ""
nmap -sV -sC --script vuln $url > $archive.txt
echo ""
bash main.sh
exit
;;
2)
echo ""
#! /bin/bash
echo -e "\e[1;37m[#]Searching for vulnerabilities, wait a moment...\e[0m"

#This function causes nmap -sC -sV --script vuln $url to search for the IP vulnerability
sleep 1
echo ""
echo "==============================================================="
nmap -sV -sC --script vuln $url
echo ""
bash main.sh
exit
;;
esac
done
;;
11)
cd /data/data/com.termux/files/home/IP-OSINT/Modules-de-IP-OSINT
#! /bin/bash
echo ""
python system.py
exit
;;
12)
cd /data/data/com.termux/files/home/IP-OSINT/PhishW
echo ""
#! /bin/bash
bash wifi.sh
cd /data/data/com.termux/files/home/IP-OSINT
echo ""
bash main.sh
exit
;;
99)
#! /bin/bash
setterm -foreground yellow
echo ""
echo -e "\e[1;31m[~]\e[0m \e[1;33mIt's a pleasure that you used my tool, bye.\e[0m"
sleep 1
exit
;;
esac
done
