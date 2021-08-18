#! /bin/bash

function dodaj(){

echo "Podaj użytkownika"
read a
echo "Podaj grupę"
read b

x=$(getent passwd | grep -c "^$a:")
y=$(getent group | grep -c "^$b:")
z=$(getent group | grep -c "^$a:")

echo "Ilość grup o podanej nazwie: $y"
echo "Ilość użytkowników o podanej nazwie: $x"
echo "Ilość grup takich jak nazwa użytkownika: $z"

if [[ $x -gt 0 && $(groups $a | grep -c $b) -eq 1 ]];then
echo "Grupa jest juz przypisana do użytkownika"
else
if [[ $x -eq 0 || $y -eq 0 ]]; then
echo "Brak użytkownika lub grupy. Utworzyć? y/n"
read c
case $c in
"y")
if [[ $x -eq 0 && $z -gt 0 ]]; then
sudo useradd -g $a $a
sudo usermod -a -G $b $a
elif [[ $x -eq 0 && $y -eq 0 ]]; then
sudo useradd $a
sudo usermod -a -G $b $a
#elif [[ $x -eq 0 && $y -gt 0 ]]; then
sudo useradd $a
sudo usermod -a -G $b $a
elif [[ $y -eq 0 && $x -gt 0 ]]; then
sudo groupadd $b
sudo usermod -a -G $b $a
fi
;;
"n") exit;;
esac
elif [[ $x -gt 0 && $y -gt 0 ]]; then
sudo usermod -a -G $b $a
fi
fi
}
dodaj

exit 0
