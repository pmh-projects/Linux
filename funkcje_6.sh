#! /bin/bash

function dodajwiecej(){

echo "Podaj początek nazwy użytkownika. Np. user"
read x
echo "Podaj liczbę użytkowników jaką chcesz utworzyć. Numery zostaną dodane do nazwy. Np. user0, user2..."
read a

echo "Czy dodac katalogi domowe? Tak=T/t Nie=inny klawisz"
read y
for (( b=0; b<=a-1; b++ ))
do
if [ $(getent passwd $x$b) ];then
a=$[a+1]
else
if [[ $y == t || $y == T ]]; then
sudo useradd -m $x$b
else
sudo useradd $x$b
fi
fi
done

if [[ $y == t || $y == T ]]; then
echo "Utworzyłem konta z katalogiem domowym."
else
echo "Utworzyłem konta bez katalogu domowego."
fi
}

dodajwiecej

exit 0
