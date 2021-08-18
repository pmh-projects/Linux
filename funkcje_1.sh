#! /bin/bash

function Nowy_Uzytkownik(){

echo "Podaj nazwe nowego uzytkowika: "

read a

if [ $(getent passwd $a) ]; then
   echo "Uzytkownik $a juz istnieje."
else
  sudo useradd $a | echo "Wykonane."
fi
}

Nowy_Uzytkownik

exit 0
