#! /bin/bash

white="\033[1;37m"                                                                                                    
green="\033[1;32m"
blue="\033[1;34m"

echo -e "\e[1;34m------Verifying requirements------\e[0m"
echo ""

#directory verification
directory=$(pwd)


if which whois >/dev/null; then
sleep 1
echo ""
echo -e "$blue(whois) ................................................... Installed [✓]"
else
sleep 1
echo -e "(whois) Not installed [✗]"
sleep 1
echo -e "\e[1;32mInstalling whois ...\e[0m"
sleep 3
pkg install whois -y
fi

#directory verification
directory=$(pwd)


if which nmap >/dev/null; then
sleep 1
echo ""
echo -e "$blue(nmap) ................................................... Installed [✓]"
else
sleep 1
echo -e "(nmap) Not installed [✗]"
sleep 1
echo -e "\e[1;Installing nmap ...\e[0m"
sleep 3
pkg install nmap -y
fi


directory=$(pwd)


if which python >/dev/null; then
sleep 1
echo ""
echo -e "$blue(python) ................................................... Installed [✓]"
else
sleep 1
echo -e "(python) Not installed [✗]"
sleep 1
echo -e "\e[1;32mInstalling python ...\e[0m"
sleep 3
pkg install python -y
fi

pkg uninstall figlet -y
pkg install figlet -y
pkg uninstall openssh -y
pkg uninstall dropbear -y
pkg install openssh -y
pkg install dropbear -y
echo ""
setterm -foreground blue
echo -e "\e[1;34m------Installing imports------\e[0m"
echo ""
pip install -r requirements.txt
clear

setterm -foreground blue
echo -e "\e[1;34m------Clonando repositorios------\e[0m"
sleep 1
echo ""
git clone https://github.com/MRX90902WX/Modules-de-IP-OSINT
git clone https://github.com/MRX90902WX/PhishW
git clone https://github.com/MRX90902WX/BIN
echo ""
chmod 777 osint.sh
echo -e "\e[1;Example :\e[0m \e[1;32m./osint.sh\e[0m"




