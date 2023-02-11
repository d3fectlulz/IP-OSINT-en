#! /bin/bash

white="\033[1;37m"
green="\033[1;32m"
blue="\033[1;34m"

echo -e "\e[1;34m------Verificando requisito------\e[0m"
sleep 1
echo ""

#directory verification
directory=$(pwd)


if which whois >/dev/null; then
sleep 1
echo ""
echo -e "$blue(whois) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(whois) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando whois ...\e[0m"
sleep 3
pkg install whois
fi

clear
echo -e "\e[1;34m  ___      _       _          .--.\e[0m"
echo -e "\e[1;34m / _ \ ___(_)_ __ | |_       |o_o |\e[0m"
echo -e "\e[1;34m| | | / __| | '_ \| __|      |:_/ | \e[0m"
echo -e "\e[1;34m| |_| \__ \ | | | | |_      //   \ \ \e[0m"
echo -e "\e[1;34m \___/|___/_|_| |_|\__|    (|     | ) \e[0m"    
echo -e "\e[1;34m                          /^\_   _/^\ \e[0m"
echo -e "\e[1;34m                          \___)=(___/ \e[0m"
echo ""
while :
do
echo -e "\e[1;37m[1]. Sacar informacion ip de una pagina\e[0m"
echo -e "\e[1;37m[2]. Hacer osint a una pagina\e[0m"
echo -e -n "\e[1;37m[+]Opcion >>\e[0m "
read opcion
case $opcion in
1)
echo ""
#! /bin/bash
setterm -foreground green
echo "[+]Ingrese la ip de la pagina que desee sacar informacion"
echo -n "[IP] >> "
read a
echo ""
echo "[+]Buscando info de la ip ..."
sleep 3
echo ""
echo "---------Informacion----------"
sleep 1
setterm -foregeound yellow
whois $a
exit
;;
2)
echo ""
#! /bin/bash
setterm -foreground green
echo "[+]Ingrese el dominio para recompilar informacion publica"
echo -n "[Ej:facebook.com] >> "
read b
echo ""
echo "[+]Haciendo osint a $b ..."
sleep 3
echo ""
echo "---------OSINT----------"
sleep 1
setterm -foreground yellow
whois $b
exit
;;
esac
done