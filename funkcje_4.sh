#! /bin/bash

function haslo(){
echo "ZMIANA HASLA"
echo "Wskaz uzytkownika i podaj jego obecne hasło jeśli potrzeba:"
read a
b=$(whoami)
if [ $(getent passwd $a) ];then
if [ $a = $b ]; then
passwd $a
else
su - $a -c passwd $a
fi
else
echo "Brak takiego uzytkownika."
fi
}

haslo

exit 0
