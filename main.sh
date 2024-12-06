#! /bin/bash
while :
do
echo -e "\e[1;37m-------------------------------------------\e[0m" 
echo -n -e "\e[1;32mDo you want to return to the menu?\e[0m \e[1;37m[\e[0m\e[1;31myes\e[0m\e[1;37m]\e[0m \e[1;32mexit\e[0m \e[1;37m[\e[0m\e[1;31mno\e[1;37m]\e[0m \e[1;32m>\e[0m \e[1;37m\e[0m"
read option
case $option in
yes)
#! /bin/bash
bash osint.sh
exit
;;
no)
#! /bin/bash
exit
;;
esac
done
