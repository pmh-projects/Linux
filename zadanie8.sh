#! /bin/bash

a=uczen1

sudo useradd $a
sudo mkdir /home/uczen1
sudo mkdir /home/uczen1/public_html
sudo chmod 711 /home/uczen1
sudo chown uczen1 /home/uczen1
echo -e "123\n123" | sudo passwd $a

exit 0
